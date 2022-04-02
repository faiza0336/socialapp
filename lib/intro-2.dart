import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'intro-3.dart';
class Intro2 extends StatefulWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  _Intro2State createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Text('Almost there!', style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ) ),

            Lottie.asset('animations/abc-login.json'),
            Center(child: Text('Enjoy the latest music using music feature of our social app.')),
            SizedBox(
              height: 30,
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const intro3()));
              },
                  child: Text("Next")),
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
                  child: Text("Skip",style: TextStyle(
                      color: Colors.blue),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
