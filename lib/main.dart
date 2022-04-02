import 'package:flutter/material.dart';
import 'package:socialapp/BottomNav.dart';

import 'package:socialapp/intro-2.dart';
import 'package:socialapp/intro-3.dart';
import 'package:socialapp/routes.dart';
import 'package:socialapp/splashscreen.dart';
import 'package:socialapp/intro-1.dart';
import 'package:socialapp/welcome.dart';
import 'package:socialapp/signup.dart';

import 'login.dart';
void main() {
  runApp(const SocialApp());

}

class SocialApp extends StatefulWidget {
  const SocialApp({Key? key}) : super(key: key);

  @override
  _SocialAppState createState() => _SocialAppState();
}

class _SocialAppState extends State<SocialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>SplashScreen(),

        MyRoutes.intro1:(context)=>intro1(),
        MyRoutes.intro2:(context)=>Intro2(),
        MyRoutes.intro3:(context)=>intro3(),
        MyRoutes.Welcome:(context)=>Welcome(),
        MyRoutes.login:(context)=>login(),
        MyRoutes.signup:(context)=>signup(),
        MyRoutes.HomePage:(context)=>BottomNavbar(),

      },

    );
  }
}


