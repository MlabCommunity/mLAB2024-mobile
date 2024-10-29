import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/base_dio_client.dart';
import '../../domain/token_auth.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST(ApiConstants.signUpEndpoint)
  Future<void> signUp(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.signInEndpoint)
  Future<TokenAuth> signIn(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.guestSignInEndpoint)
  Future<TokenAuth> guestSignIn(@Body() Map<String, dynamic> body);

  @DELETE(ApiConstants.deleteUserEndpoint)
  Future<void> deleteUser();
}

@riverpod
AuthClient authClient(AuthClientRef ref) => AuthClient(ref.read(baseDioClientProvider), baseUrl: ApiConstants.baseUrl);
