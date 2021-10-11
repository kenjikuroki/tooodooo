import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toodoo/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //右上の消す
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      textTheme: GoogleFonts.nunitoSansTextTheme(
        Theme.of(context).textTheme,
      ),
      ),
      home: Homepage(),
    );
  }}

