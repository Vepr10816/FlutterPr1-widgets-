import 'package:dartz/dartz.dart';
import 'package:pr2/domain/entity/role_entity.dart';

abstract class AuthUserCase<Type,Params,Params2>{
  Future<Either<Type,RoleEnum>> signIn(Params params);
  Future<Either<Type,bool>> signUp(Params2 params);
}