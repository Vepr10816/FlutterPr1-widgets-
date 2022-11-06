import 'package:dartz/dartz.dart';
import 'package:pr2/core/usecase/auth_user_case.dart';
import 'package:pr2/domain/entity/role_entity.dart';
import 'package:pr2/domain/repositories/auth_repositories.dart';

class Auth implements AuthUserCase<String,AuthParams,RegistrationParams>{
  final AuthRepositories authRepositories;

  Auth(this.authRepositories);

  @override
  Future<Either<String, RoleEnum>> signIn(AuthParams params) async{
    return await authRepositories.signIn(params.login, params.password);
  }

  //@override
  Future<Either<String, bool>> signUp(RegistrationParams params) async{
    return await authRepositories.signUp(params.lastName,params.firstName,params.middleName,params.email,params.login, params.password);
  }

}

class AuthParams{
  final String login;
  final String password;

  AuthParams({required this.login, required this.password});
}


class RegistrationParams{
  final String lastName;
  final String firstName;
  final String middleName;
  final String email;
  final String login;
  final String password;

  RegistrationParams({required this.lastName, required this.firstName, required this.middleName, required this.email, required this.login, required this.password});
}