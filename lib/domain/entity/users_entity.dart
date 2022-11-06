import 'package:pr2/domain/entity/role_entity.dart';

class UsersEntity{
  late int id;
  final String login;
  final String password;
  final /*RoleEnum*/int id_role;

  UsersEntity({this.id = 0,required this.login, this.password = '', required this.id_role});
}
