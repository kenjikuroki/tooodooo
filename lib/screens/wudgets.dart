import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  /////////Null Saftyのため、final String title; → final title;に変更
  final title;
  final desc;
  TaskCardWidget({this.title,  this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 32.0,
      ),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
              color: Color(0xFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              desc ?? "No Description Added.",
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF86829D),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class TodoWidget extends StatelessWidget {
  final text;
  final isDone;
  TodoWidget({this.text, required this.isDone});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          vertical: 8.0,
        ),
        child: Row(
          children: [
            Container(
              width: 20.0,
              height: 20.0,
              margin: EdgeInsets.only(
                right: 12.0,
              ),
              decoration: BoxDecoration(
                color: isDone ? Color(0xFF7349FE) : Colors.transparent,
                borderRadius: BorderRadius.circular(6.0),
                border: isDone ? null : Border.all(
                  color: Color(0xFF86829D),
                  width: 1.5,
                )
              ),
              child: Image(
                image: AssetImage(
                  'assets/images/check.png',
                ),
              ),
            ),
            Text(
              text ?? "(Unnamed Todo))",
            style: TextStyle(
              color: isDone ? Color(0xFF211551) : Color(0xFF86829D),
              fontSize: 16.0,
              fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
            ),),
          ],
        ),
      ),
    );
  }
}


class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection){
    return child;
  }
}
