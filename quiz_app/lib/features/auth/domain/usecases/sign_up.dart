import 'package:equatable/equatable.dart';
import '../../../../core/utils/typedefs.dart';
import '../../../../core/utils/usecases.dart';
import '../repositories/auth_repo.dart';

class SignUp extends FutureUsecaseWithParams<void, SignUpParams> {
  const SignUp(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(SignUpParams params) => _repo.signUp(email: params.email, password: params.password, name: params.name);
}

class SignUpParams extends Equatable {
  const SignUpParams({required this.email, required this.password, required this.name});
  final String email;
  final String password;
  final String name;

  @override
  List<Object?> get props => [email, password, name];
}
