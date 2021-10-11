import 'package:flutter/material.dart';
import 'package:toodoo/screens/taskpage.dart';
import 'package:toodoo/screens/wudgets.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 32.0,
                    bottom: 32.0,
                  ),
                  child: Image(
                    width: 50,
                    image: AssetImage(
                      'assets/images/cat.png',
                    ),
                  ),
                ),
               Expanded(
                 child: ScrollConfiguration(
                   behavior: NoGlowBehaviour(),
                   child: ListView(
                     children: [
                       TaskCardWidget(
                         title:"Get Start!",
                         desc: "Hello User! Welcome to TOODOO app. this is a defauit task that you can edit or delete to start using the app.",
                       ),
                       TaskCardWidget(),
                       TaskCardWidget(),
                       TaskCardWidget(),
                       TaskCardWidget(),
                     ]
                   ),
                 ),
               )
              ]),
              Positioned(
                bottom: 24.0,
                right:0.0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Taskpage()
                    ),
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF7349FE), Color(0xFF643FDE)],
                            begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, -1.0),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image( image: AssetImage("assets/images/plus.png"),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
