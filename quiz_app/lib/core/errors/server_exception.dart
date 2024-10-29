import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  const ServerException({required this.message, this.statusCode});
  final String message;
  final dynamic statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}
