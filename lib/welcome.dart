import 'package:flutter/material.dart';
import 'package:socialapp/welcome.dart';
import 'package:socialapp/signup.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      child: Column(
        children: [
          Text('Welcome To Social App', style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,

          ), ),
          Center
            (child: Text('You can start using the application after signing up in the app. It will take a while.')),
       SizedBox(
         height: 10,
       ),
       Center(child: Text('If you already have an account just login.')),
          SizedBox(
            height: 30,
          ),
          Image.asset('images/welcme.png'),
          SizedBox(
            height: 80,
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const signup()));
            },
                child: Text("Sign Up")),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 2,color: Colors.blue),
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {  },
                child: Text("Login",style: TextStyle(
                    color: Colors.blue),
                )),
          )
        ],
      ),
    ),

    ) ;
  }
}
