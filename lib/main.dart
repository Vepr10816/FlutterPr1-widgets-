import 'package:flutter/material.dart';
import 'package:pr2/core/db/data_base_helper.dart';

void main() async{
  await DataBaseHelper.instance.init();
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}