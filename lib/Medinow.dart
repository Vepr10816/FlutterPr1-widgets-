import 'package:flutter/material.dart';

class Medinow extends StatefulWidget {
  const Medinow({super.key});

  @override
  State<Medinow> createState() => _MedinowState();
}

class _MedinowState extends State<Medinow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(3, 158, 162, 1),
        body: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('medinow',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: '',
                        fontSize: 35,
                        fontWeight: FontWeight.w800)),
                Text('Meditate with Us!',
                    style: TextStyle(color: Colors.white, fontFamily: '')),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  width: double.infinity,
                  height: 100,
                    child: TextButton(
                  onPressed: () {},
                  child: Text('Sign in With Apple',
                      style: TextStyle(color: Colors.black)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))),
                )
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: double.infinity,
                  height: 60,
                    child: TextButton(
                  onPressed: () {},
                  child: Text('Continue with Email or Phone',
                      style: TextStyle(color: Colors.black)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(205, 253, 254, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)))),
                )
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text('Continue With Google',
                  style: TextStyle(color: Colors.white)),
                  ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Image.asset("assets/images/image3.png"),
                )
              ],
            ),
          ),
        ));
  }
}