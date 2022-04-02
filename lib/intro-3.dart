import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:socialapp/intro-3.dart';
import 'package:socialapp/welcome.dart';

class intro3 extends StatefulWidget {
  const intro3({Key? key}) : super(key: key);

  @override
  _intro3State createState() => _intro3State();
}

class _intro3State extends State<intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Text('Lets Go!',style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            )),

            Lottie.asset('animations/secure-login.json'),
            Center(child: Text('You can create and edit your Profile by signing up on social app.')),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Welcome()));
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
