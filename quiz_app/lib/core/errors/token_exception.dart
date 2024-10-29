import 'package:dio/dio.dart';

abstract class TokenException extends DioException{
  TokenException({required super.requestOptions});

  @override
  String get message => 'token exception';

}