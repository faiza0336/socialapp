import 'package:flutter/material.dart';
import 'package:socialapp/BottomNav.dart';
import 'package:socialapp/routes.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
    children: [
      Text("Hello there,",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      ),
      Center(child: Text('We are so happy you came back. ')),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Container(child: Text("Login to  your account to meet new people & enjoy Music")),
      ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: "Email",
              suffixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white10)
              )
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: "Passward",
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavbar()));
            },
            child: Text("Log In")),

      ),
      SizedBox(
        height: 10,
      ),

      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 20),
            child: Text('Dont have an account'),
          ),
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.signup);

              },
              child: Text('Sign Up!',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ))

        ],
      )

    ],
      ),
    );
  }
}
