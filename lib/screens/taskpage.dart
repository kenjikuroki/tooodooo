import 'package:flutter/material.dart';
import 'package:toodoo/screens/wudgets.dart';

class Taskpage extends StatefulWidget {
  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24.0,
                      bottom: 6.0,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                           Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(24.0,),
                            child: Image(
                              width: 20,
                              image: AssetImage(
                                'assets/images/left-arrow.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          /////TextFieldのボーダーがダサいのでnoneで消す
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Task Title.",
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF211551),

                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Description for the task...",
                            border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                      ),
                    ),
                  ),
                  TodoWidget(
                    text: "create your first Task",
                    isDone: true,
                  ),
                  TodoWidget(
                    text: "create your first todo as well",
                    isDone: true,
                  ),
                  TodoWidget(
                    text: "Just another todo",
                    isDone: false,
                  ),
                  TodoWidget(
                    isDone: false,
                  ),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right:24.0,
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
                      color: Color(0xFFFE3577),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image( image: AssetImage(
                        "assets/images/trash.png"
                    ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}


