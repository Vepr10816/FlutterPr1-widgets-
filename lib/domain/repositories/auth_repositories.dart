import 'package:dartz/dartz.dart';
import 'package:pr2/domain/entity/role_entity.dart';

abstract class AuthRepositories{

  String get table;

  //Авторизация
  Future<Either<String,RoleEnum>> signIn(String login, String password);
  //Регистрация
  Future<Either<String,bool>> signUp(String login, String password, String lastName,String firstName,String middleName,String email);
}
