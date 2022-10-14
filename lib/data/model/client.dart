import 'dart:convert';

import 'package:pr2/domain/entity/client_entity.dart';

class Client extends ClientEntity {
  late int id;
  final String lastName;
  final String firstName;
  final String middleName;
  final String email;

  Client(
      {required this.id,
      required this.lastName,
      required this.firstName,
      required this.middleName,
      required this.email})
      : super(
            id: id,
            lastName: lastName,
            firstName: firstName,
            middleName: middleName,
            email: email);

  Map<String, dynamic> toMap() {
    return {
      'lastName': lastName,
      'firstName': firstName,
      'middleName': middleName,
      'email': email
    };
  }

  factory Client.toFromMap(Map<String, dynamic> json) {
    return Client(
        id: json['id'],
        lastName: json['lastName'],
        firstName: json['firstName'],
        middleName: json['middleName'],
        email: json['email']);
  }
}
