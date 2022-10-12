class UsersEntity{
  late int id;
  final String login;
  final String password;
  final int id_role;
  final int id_client;

  UsersEntity({required this.id,required this.login, required this.password, required this.id_role, required this.id_client});
}
