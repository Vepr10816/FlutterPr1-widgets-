import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr2/data/model/client.dart';
import 'package:pr2/main.dart';
import 'package:pr2/presentation/screen/admin/admin_page.dart';
import 'package:pr2/presentation/screen/auth/sign_in.dart';
import 'package:pr2/presentation/screen/auth/sing_up.dart';
import 'package:pr2/presentation/screen/client/client_page.dart';

const String screen1NamePage = 'SignIn';
const String screen2NamePage = 'SignUp';
const String screen3NamePage = 'AdminPage';
const String screen4NamePage = 'ClientPage';
class AppRouter{
  Route<dynamic>? generateRouter(RouteSettings settings){
    switch(settings.name){
      case screen1NamePage:
      {
        return MaterialPageRoute(builder: (_) => SignIn());
      }
      case screen2NamePage:
      {
        return MaterialPageRoute(builder: (_) => SignUp());
      }
      case screen3NamePage:
      {
        return MaterialPageRoute(builder: (_) => AdminPage());
      }
      case screen4NamePage:
      {
        return MaterialPageRoute(builder: (_) => ClientPage());
      }
    }
  }
}