import 'dart:convert';
import 'package:pr2/domain/entity/users_entity.dart';

class Users extends UsersEntity {
  late int id;
  final String login;
  final String password;
  final int id_role;
  final int id_client;

  Users({
    required this.id,
    required this.login,
    required this.password,
    required this.id_role,
    required this.id_client,
  }) : super(
          id: id,
          login: login,
          password: password,
          id_role: id_role,
          id_client: id_client,
        );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      ' login': login,
      ' password': password,
      ' id_role': id_role,
      ' id_client': id_client,
    };
  }

  factory Users.toFromMap(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      login: json[' login'],
      password: json[' password'],
      id_role: json[' id_role'],
      id_client: json[' id_client'],
    );
  }
}
