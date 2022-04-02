import 'package:flutter/material.dart';
import 'package:socialapp/intro-1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _abc();
  }
  _abc() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>intro1()));

  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        height: 1000,
        width: 500,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Color(0xff2FEBD4),
              Color(0xff00D0EC),
              Color(0xff0094FF),
              Color(0xff5796F4),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/pic.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Social App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              ),
            )
          ],

            ),
      ),
      
    );
  }
}
