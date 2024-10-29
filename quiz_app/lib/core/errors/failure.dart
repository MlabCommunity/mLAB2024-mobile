import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, this.statusCode});

  final String message;
  final dynamic statusCode;

  String get errorMasaage => '$statusCode: $message';

  @override
  List<Object?> get props => [message, statusCode];
}
