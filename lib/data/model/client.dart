import 'dart:convert';

import 'package:pr2/domain/entity/client_entity.dart';

class Client extends ClientEntity {

  Client(
      {super.id = 0,
      required super.lastName,
      required super.firstName,
      required super.middleName,
      required super.email,
      required super.id_users});

  Map<String, dynamic> toMap() {
    return {
      'lastName': lastName,
      'firstName': firstName,
      'middleName': middleName,
      'email': email,
      'id_users': id_users
    };
  }

  factory Client.toFromMap(Map<String, dynamic> json) {
    return Client(
        id: json['id'] as int,
        lastName: json['lastName'],
        firstName: json['firstName'],
        middleName: json['middleName'],
        email: json['email'],
        id_users: json['id_users']);
  }
}
