import 'dart:convert';
import 'package:pr2/core/crypto/crypto.dart';
import 'package:pr2/domain/entity/role_entity.dart';
import 'package:pr2/domain/entity/users_entity.dart';

class Users extends UsersEntity {
  //late int id;
  //final String login;
  //final String password;
  //final RoleEnum id_role;
  final String password;

  Users({
    super.id=0,
    required super.login,
    required this.password,
    required super.id_role,
   }); //: super(
  //         id: id,
  //         login: login,
  //         password: password,
  //         id_role: id_role
  //       );

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': Crypto.crypto(password),
      'id_role': id_role,
    };
  }

  factory Users.toFromMap(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      login: json['login'],
      password: json['password'],
      id_role: json['id_role'],//RoleEnum.values
          //.firstWhere((element) => element.id == (json['id_role'] as int)),
    );
  }
}
