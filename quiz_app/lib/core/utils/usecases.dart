import 'typedefs.dart';

abstract class FutureUsecaseWithParams<T, Params> {
  const FutureUsecaseWithParams();

  ResultFuture<T> call(Params params);
}

abstract class FutureUsecaseWitoutParams<T> {
  const FutureUsecaseWitoutParams();

  ResultFuture<T> call();
}
