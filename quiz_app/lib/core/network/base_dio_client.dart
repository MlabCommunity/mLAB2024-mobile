import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/auth/domain/token_auth.dart';
import '../errors/access_token_refresh_failure_exception.dart';
import '../errors/invalid_refresh_token_exception.dart';
import '../errors/refresh_token_missing_exception.dart';
import '../services/app_router.dart';
import '../services/session_provider.dart';
import 'api_constants.dart';

part 'base_dio_client.g.dart';

@riverpod
Dio baseDioClient(BaseDioClientRef ref) =>
    buildDioClient(ApiConstants.baseUrl, ref);

Dio buildDioClient(String base, Ref ref) {
  final dio = Dio()..options = BaseOptions(baseUrl: base);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? accessToken = await ref.read(sessionProvider).accessToken;
        if (accessToken != null) {
          bool hasExpired = JwtDecoder.isExpired(accessToken);
          if (hasExpired) {
            final refreshToken = await ref.read(sessionProvider).refreshToken;
            if (refreshToken == null) {
              ref.read(sessionProvider).deleteTokens();
              handler.reject(
                RefreshTokenMissingException(requestOptions: options),
              );
              return;
            }
            try {
              final tokenResponse = await refreshAccessToken(
                  refreshToken, refreshTokenDioClient(base, ref));
              if (tokenResponse == null) {
                handler.reject(
                  AccessTokenRefreshFailureException(requestOptions: options),
                );
                return;
              }
              await ref.read(sessionProvider).saveTokens(
                    accessToken: tokenResponse.accessToken,
                    refreshToken: tokenResponse.refreshToken,
                  );
            } on InvalidRefreshTokenException catch (e) {
              ref.read(sessionProvider).deleteTokens();
              ref.read(appRouterProvider).replaceAll([const DashboardRoute()]);
              handler.reject(e);
              return;
            }
          }
          accessToken = await ref.read(sessionProvider).accessToken;
        }
        options.headers[ApiConstants.authHeader] =
            '${ApiConstants.authBearer}$accessToken';

        options.headers[ApiConstants.contentTypeHeader] =
            ApiConstants.contentTypeJson;

        if (options.data is FormData) {
          FormData newFormData = FormData();
          newFormData.fields.addAll(options.data.fields);
          newFormData.files.addAll(options.data.files);
          options.data = newFormData;
        }

        return handler.next(options);
      },
      onError: (error, handler) async {
        return handler.next(error);
      },
      onResponse: (response, handler) async {
        return handler.next(response);
      },
    ),
  );
  return dio;
}

Future<TokenAuth?> refreshAccessToken(String refreshToken, Dio dio) async {
  dio.options = BaseOptions(baseUrl: ApiConstants.baseUrl);
  final response = await dio.post(
    ApiConstants.refreshAccessTokenEndpoint,
    data: {ApiConstants.refreshTokenStorageKey: refreshToken},
  );
  if (response.statusCode == 200) {
    return TokenAuth.fromJson(response.data);
  } else if (response.statusCode == 401 || response.statusCode == 400) {
    throw InvalidRefreshTokenException(requestOptions: response.requestOptions);
  } else {
    return null;
  }
}

Dio refreshTokenDioClient(String base, Ref ref) {
  final dio = Dio()..options = BaseOptions(baseUrl: base);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final refreshToken = await ref.read(sessionProvider).refreshToken;
        if (refreshToken == null) {
          ref.read(sessionProvider).deleteTokens();
          handler.reject(
            RefreshTokenMissingException(requestOptions: options),
          );
        }
        options.headers[ApiConstants.contentTypeHeader] =
            ApiConstants.contentTypeJson;
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401 ||
            error.response?.statusCode == 400) {
          return handler.resolve(error.response!);
        }
        return handler.next(error);
      },
      onResponse: (response, handler) async {
        return handler.next(response);
      },
    ),
  );
  return dio;
}
