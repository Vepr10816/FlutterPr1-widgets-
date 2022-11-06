import 'package:pr2/command/data_base_request.dart';
import 'package:pr2/core/crypto/crypto.dart';
import 'package:pr2/core/db/data_base_helper.dart';
import 'package:pr2/core/exeption/failure.dart';
import 'package:pr2/data/model/client.dart';
import 'package:pr2/data/model/users.dart';
import 'package:pr2/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:pr2/domain/repositories/auth_repositories.dart';
import 'package:sqflite/sqflite.dart';

class AuthRepositoriesImpl implements AuthRepositories {
  final _db = DataBaseHelper.instance.database;

  @override
  // TODO: implement table
  String get table => DataBaseRequest.tableUsers;
  String get tableClients => DataBaseRequest.tableClient;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    try {
      var user = await _db.query(table,
          columns: ['login', 'password', 'id_role'],
          where: 'login = ?',
          whereArgs: [login]);

          if(user.isEmpty){
            return Left('Такого пользователя нет');
          }

          if(user.first['password'] != Crypto.crypto(password)){
            return Left(AuthPasswordFailure().errorMessage);
          }

          return Right(RoleEnum.values[(user.first['id_role'] as int) -1]);
    } on DatabaseException catch (error) {
      return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    }
  }

  @override
  Future<Either<String, bool>> signUp( String lastName,String firstName,String middleName,String email,String login, String password) async {
    // TODO: implement signUp
    try {
      await _db.insert(
        table,
        Users(
          login: login,
          password: password,
          id_role: 2//RoleEnum.user,
        ).toMap(),
      );

      final data = await _db.rawQuery('SELECT id FROM Users ORDER BY id DESC LIMIT 1');
      await _db.insert(
        tableClients,
        Client(
          lastName: lastName,
          firstName: firstName,
          middleName: middleName,
          email: email,
          id_users: data.last['id'],
        ).toMap(),
      );

      return const Right(true);
    } on DatabaseException catch (error) {
      return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    }
  }
}
