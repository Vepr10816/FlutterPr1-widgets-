import 'package:flutter/material.dart';

class MindDeepRelax extends StatefulWidget {
  const MindDeepRelax({super.key});

  @override
  State<MindDeepRelax> createState() => _MindDeepRelaxState();
}

class _MindDeepRelaxState extends State<MindDeepRelax> {
  @override
  Widget build(BuildContext context) {
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
  }
}