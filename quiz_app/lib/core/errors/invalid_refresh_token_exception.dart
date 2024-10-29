import 'token_exception.dart';

class InvalidRefreshTokenException extends TokenException {
  InvalidRefreshTokenException({required super.requestOptions});

  @override
  String toString() => 'InvalidRefreshTokenException: $message';
}
