import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      body: SafeArea(minimum: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Meditate', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
            Image.asset("assets/images/shape.png")

          ],),

          Divider(color: Colors.grey),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            SizedBox.fromSize(
              size: Size(35, 30), // button width and height
              child: ClipOval(
                child: Material(
                  color: Color.fromRGBO(3, 158, 162, 1), // button color
                  child: InkWell(
                    splashColor: Color.fromRGBO(3, 158, 162, 1), // splash color
                    onTap: () {}, // button pressed
                    child:Center(child:Text('All', style: TextStyle(color: Colors.white),))
                  ),
                ),
              ),
            ),
          
          TextButton(onPressed: () {},child: Text('Bible In a Year',
          style: TextStyle(color: Color.fromRGBO(3, 158, 162, 1))),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(205, 253, 254, 1)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder( borderRadius: BorderRadius.circular(50))))),

          TextButton(onPressed: () {},child: Text('Dailies',
          style: TextStyle(color: Color.fromRGBO(3, 158, 162, 1))),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(205, 253, 254, 1)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder( borderRadius: BorderRadius.circular(50))))),


          TextButton(onPressed: () {},child: Text('Minutes',
          style: TextStyle(color: Color.fromRGBO(3, 158, 162, 1))),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(205, 253, 254, 1)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder( borderRadius: BorderRadius.circular(50))))),
        ]),

        Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child:ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset("assets/images/sonnemoone.png")
            )
        ),

        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Text('A Song of Moon', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))
        ),


        Container(
          alignment: Alignment.centerLeft,
          child: Text('Start with the basics', style: TextStyle(fontSize: 15))
        ),


        Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Row(children: [Image.asset("assets/images/hurt.png"), Text('  9 Sessions', style: TextStyle(color: Colors.grey),)]), 
            Text('Start >', style: TextStyle(color: Colors.grey))])),

        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child:ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset("assets/images/orangepic.png", width: 170,)
            )
        ),

        Container(
          alignment: Alignment.centerLeft,
          child: Text('The Sleep Hour', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))
        ),


        Container(
          alignment: Alignment.centerLeft,
          child: Text('Ashna Mukherjee', style: TextStyle(fontSize: 10))
        ),

        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Row(children: [Image.asset("assets/images/hurt.png"), Text('  3 Sessions', style: TextStyle(color: Colors.grey, fontSize: 10),)]), 
            Text('                       Start >', style: TextStyle(color: Colors.grey, fontSize: 10))])),
        
        ],),


        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child:ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset("assets/images/yellowpic.png", width: 170,)
            )
        ),

        Container(
          alignment: Alignment.centerLeft,
          child: Text('Easy on the Mission', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))
        ),


        Container(
          alignment: Alignment.centerLeft,
          child: Text('Peter Mach', style: TextStyle(fontSize: 10))
        ),

        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Row(children: [Image.asset("assets/images/hurt.png"), Text('  5 Sessions', style: TextStyle(color: Colors.grey, fontSize: 10),)]), 
            Text('                       Start >', style: TextStyle(color: Colors.grey, fontSize: 10))])),


        
        ],),

        ],),

        Container(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),),


        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Container(
          child:ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset("assets/images/bluepic.png", width: 170,)
            )
        ),

        Container(
          alignment: Alignment.centerLeft,
          child: Text('Relax with Me', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))
        ),


        Container(
          alignment: Alignment.centerLeft,
          child: Text('Amanda James', style: TextStyle(fontSize: 10))
        ),


        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Row(children: [Image.asset("assets/images/hurt.png"), Text('  3 Sessions', style: TextStyle(color: Colors.grey, fontSize: 10),)]), 
            Text('                       Start >', style: TextStyle(color: Colors.grey, fontSize: 10))])),
        ],),


        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Container(
          child:ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset("assets/images/grpic.png", width: 170,)
            )
        ),

        Container(
          alignment: Alignment.centerLeft,
          child: Text('Sun and Energy', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))
        ),


        Container(
          alignment: Alignment.centerLeft,
          child: Text('Micheal Hiu', style: TextStyle(fontSize: 10))
        ),

        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Row(children: [Image.asset("assets/images/hurt.png"), Text('  5 Sessions', style: TextStyle(color: Colors.grey, fontSize: 10),)]), 
            Text('                       Start >', style: TextStyle(color: Colors.grey, fontSize: 10))])),


        
        ],),

        ],)

        ],)),

    );*/



    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset("assets/images/immage.png")
          ),

          Container(padding: EdgeInsets.fromLTRB(0, 15, 0, 0), ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Peter Mach', style: TextStyle(color: Colors.grey))),

          Align(
            alignment: Alignment.centerLeft,
            child: Text('Mind Deep Relax', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800))),

          Align(
            alignment: Alignment.centerLeft,
            child: Text('Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.', style: TextStyle(fontSize: 15))),


          Container(padding: EdgeInsets.fromLTRB(0, 30, 0, 0), ),

          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: double.infinity,
                height: 60,
                child: TextButton(
                onPressed: () {},
                child: Text('Play Next Session',style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromRGBO(3, 158, 162, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))))
                ),
                
                Container(
                padding: EdgeInsets.fromLTRB(65,10,0,0),
                child:Image.asset("assets/images/grbtn.png", height: 50, width: 50,)),
                ]),

                Container(padding: EdgeInsets.fromLTRB(0, 30, 0, 0), ),


                Row(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset("assets/images/bluebtn.png", width: 60, height: 50,)),

                    Container(padding: EdgeInsets.fromLTRB(0, 0, 10, 0), ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(alignment: Alignment.bottomLeft,child: Text('Sweet Memories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))),
                        Align(alignment: Alignment.bottomLeft,child: Text('December 29 Pre-Launch', style: TextStyle(color: Colors.grey))),
                      ],
                    ),
                    Container(padding: EdgeInsets.fromLTRB(0, 0, 70, 0), ),
                    Container(alignment: Alignment.topCenter,child: Text('...', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.grey))),
                  ],
                ),

                Divider(color: Colors.grey),

                Row(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset("assets/images/grbtn.png", width: 60, height: 50,)),

                    Container(padding: EdgeInsets.fromLTRB(0, 0, 10, 0), ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(alignment: Alignment.bottomLeft,child: Text('Mind Explore', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))),
                        Align(alignment: Alignment.bottomLeft,child: Text('December 29 Pre-Launch', style: TextStyle(color: Colors.grey))),
                      ],
                    ),
                    Container(padding: EdgeInsets.fromLTRB(0, 0, 70, 0), ),
                    Container(alignment: Alignment.topCenter,child: Text('...', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.grey))),
                  ],
                ),


                Divider(color: Colors.grey),

                Row(
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset("assets/images/orangebtn.png", width: 60, height: 50,)),

                    Container(padding: EdgeInsets.fromLTRB(0, 0, 10, 0), ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(alignment: Alignment.bottomLeft,child: Text('A Day Dream', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))),
                        Align(alignment: Alignment.bottomLeft,child: Text('December 29 Pre-Launch', style: TextStyle(color: Colors.grey))),
                      ],
                    ),
                    Container(padding: EdgeInsets.fromLTRB(0, 0, 70, 0), ),
                    Container(alignment: Alignment.topCenter,child: Text('...', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.grey))),
                  ],
                ),

        ],)
      )

    );










    /*return Scaffold(
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
        ));*/
  }
}
