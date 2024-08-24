import 'package:e_commerce/login.dart';
import 'package:e_commerce/splash_screen.dart';
import 'package:flutter/material.dart';
import 'navigations.dart';


void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({super.key});
ThemeData myTheme=ThemeData
(
primaryColor:  const Color(0xff40BFFF),

) ;
  
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(theme: myTheme,
      debugShowCheckedModeBanner: false,
      home:const  SplashScreen(),
    );
  }
}