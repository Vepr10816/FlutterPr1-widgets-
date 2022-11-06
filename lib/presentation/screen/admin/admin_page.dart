import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      children: [
        Text(
          "Администратор",
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        CustomButton(
          content: 'Назад',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ))));
  }
}
