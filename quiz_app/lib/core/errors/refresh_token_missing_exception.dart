import 'token_exception.dart';

class RefreshTokenMissingException extends TokenException {
  RefreshTokenMissingException({required super.requestOptions});

  @override
  String get message => 'Refresh token is missing';
}