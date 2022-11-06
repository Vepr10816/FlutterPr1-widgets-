import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      children: [
        Text(
          "Клиент",
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
