import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:socialapp/intro-2.dart';
class intro1 extends StatefulWidget {
  const intro1({Key? key}) : super(key: key);

  @override
  _intro1State createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: Column(
          children: [
            Text('Wait A Moment',style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            )
            ),
            Lottie.asset("animations/secure-login.json"),
            Center(child: Text("Connect with other People arround the world using our social app.")),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Intro2()));
              },
              child: Text('Next')),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(



              ),
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2,color: Colors.blue),
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {

                  },
                  child: Text('Skip',
                  style: TextStyle(
                    color: Colors.blue,
                  ),)),

            )
          ],
        ),
      ) ,
    );
  }
}
