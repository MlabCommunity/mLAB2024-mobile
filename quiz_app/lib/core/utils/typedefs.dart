import 'package:dartz/dartz.dart';
import '../errors/server_exception.dart';

typedef ResultFuture<T> = Future<Either<ServerException, T>>;
