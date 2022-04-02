import 'dart:html';

import 'package:flutter/material.dart';
import 'package:socialapp/BottomNav.dart';
import 'package:socialapp/home-page.dart';
import 'package:socialapp/routes.dart';
import 'package:socialapp/signup.dart';
import 'package:socialapp/login.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
    child: Column(
    children: [
    Text('Create Account', style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w600,

    ), ),
      SizedBox(
        height: 10,
      ),
      Center(child: Text('Hi there, You can start using this app after sign up.')),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset('images/Group 1 (1).png'),
          Image.asset('images/Group 2 (1).png'),
        ],
      ),
      Text('or, sign up with your email.'),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: "Enter Username",
            suffixIcon: Icon(Icons.people_alt_outlined),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white10)
            )
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: "Enter Email",
              suffixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white10)
              )
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: "Set Passward",
              suffixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white10)
              )
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: "Verify passward",
              suffixIcon: Icon(Icons.remove_red_eye),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white10)
              )
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff2FEBD4),
                Color(0xff00D0EC),
                Color(0xff0094FF),
                Color(0xff5796F4),
              ]
          ),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                primary:Colors.transparent
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavbar()));
            },
            child: Text("Sign Up")),

      ),
         SizedBox(
           height: 10,
         ),

      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 20),
            child: Text('Already have an account.'),
          ),
          GestureDetector(
              onTap: (){
              Navigator.pushNamed(context, MyRoutes.login);

              },
              child: Text('Login Now',
              style: TextStyle(
                color: Colors.blue,
              ),
              ))

        ],
      )

          ]
        
        ),
    ),


    );
  }
}
