import 'token_exception.dart';

class AccessTokenRefreshFailureException extends TokenException {
  AccessTokenRefreshFailureException({required super.requestOptions});

  @override
  String get message => 'Failed to refresh access token';
}
