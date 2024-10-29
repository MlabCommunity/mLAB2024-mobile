import 'failure.dart';
import 'server_exception.dart';

class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.statusCode});

  ServerFailure.fromException(ServerException e) : this(message: e.message, statusCode: e.statusCode);
}
