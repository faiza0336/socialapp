import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp/routes.dart';
//
//
//
//
//
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal:19),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0,0),
                    color: Colors.black.withOpacity(0.1),
                  )
                ]
            ),
            child: IconButton(

              icon: Icon(Icons.notifications_active_outlined,
                color: Color(0xff0094FF),
                size: 20,),
              onPressed: () {
              },
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Social",
          style: TextStyle(
              fontSize: 30,
              color: Colors.black
          ),),

        leading: Container(
          margin: EdgeInsets.symmetric(vertical: 10,horizontal:10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(0,0),
                  color: Colors.black.withOpacity(0.1),
                )
              ]
          ),
          child: IconButton(

            icon: Icon(Icons.segment_rounded,
              color: Color(0xff0094FF),
              size: 17,),
            onPressed: () {
              _globalKey.currentState?.openDrawer();
            },
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, i) {
                    return Container(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(child: Image.asset("images/pic.png")));
                  },
                )
            ),
            Padding(
              padding: const EdgeInsets.only(left:10, right: 50),
              child: Container(
                height: 100,
                width: 600,
                color: Colors.grey.shade50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Column(
                    children: [
                      Text("Create apost...",
                      style: TextStyle(color:Colors.black45,fontSize: 17,fontWeight: FontWeight.w400 ),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Image.asset("images/Vector.png",height: 34,),
                          SizedBox(width: 15,),
                          Icon(Icons.location_on_outlined,color: Colors.grey,size: 24,),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(100, 45),
                                    primary: Colors.grey.shade100,
                                    elevation: 3,

                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                                    side: BorderSide(width: 1.5,color: Colors.lightBlueAccent)),
                                onPressed: (){},
                              child: Row(
                                children: [
                                  Text("Share",style: TextStyle(color: Colors.black54,
                                      fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: 10,
                                  ),
                                  Icon(Icons.send,

                                    size: 15,
                                    color: Colors.lightBlueAccent,)
                                ],
                              ),
                          )
                          )],
                      )

                    ],
                  ),
                )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Features Posts', style: TextStyle(
              fontSize: 25,
            ),),
        SizedBox(height: 3,),
        Container(
          height: 315,
          width:MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text('Jhona Stew', style: TextStyle(
                    fontSize:16,
                  ),),
                  SizedBox(width: 10),
                  Text('+Follow', style: TextStyle(
                    fontSize:16,color: Colors.blueAccent,
                  ),),
                  SizedBox(width: 200,),
                  Icon(Icons.bookmark_border_outlined,size: 25,
                  )
                ],
              ),  Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    Text("Just Now",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w100
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("images/download (2).jpg",
                height:210,
                  width:MediaQuery.of(context).size.width,
                fit:BoxFit.fill,
              ),
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined,color: Colors.blue,),
                  SizedBox(width: 2,),
                  Text("Like",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.blue

                    ),),
                  SizedBox(width: 52,),
                  Icon(Icons.chat_outlined,color: Colors.grey.shade600,),
                  SizedBox(width: 2,),
                  Text("Comment",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.grey.shade600

                    ),),  SizedBox(width: 52,),
                  Icon(Icons.share_outlined,color: Colors.grey.shade600,),
                  SizedBox(width: 2,),
                  Text("Share",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.grey.shade600

                    ),),
                ],

              )


            ],
          ),
        ),
Container(
          height: 315,
          width:MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text('Jhona Stew', style: TextStyle(
                    fontSize:16,
                  ),),
                  SizedBox(width: 10),
                  Text('+Follow', style: TextStyle(
                    fontSize:16,color: Colors.blueAccent,
                  ),),
                  SizedBox(width: 200,),
                  Icon(Icons.bookmark_border_outlined,size: 25,
                  )
                ],
              ),  Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    Text("Just Now",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w100
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("images/download (2).jpg",
                height:210,
                  width:MediaQuery.of(context).size.width,
                fit:BoxFit.fill,
              ),
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined,color: Colors.blue,),
                  SizedBox(width: 2,),
                  Text("Like",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.blue

                    ),),
                  SizedBox(width: 52,),
                  Icon(Icons.chat_outlined,color: Colors.grey.shade600,),
                  SizedBox(width: 2,),
                  Text("Comment",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.grey.shade600

                    ),),  SizedBox(width: 52,),
                  Icon(Icons.share_outlined,color: Colors.grey.shade600,),
                  SizedBox(width: 2,),
                  Text("Share",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.grey.shade600

                    ),),
                ],

              )


            ],
          ),
        ),
Container(
          height: 315,
          width:MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text('Jhona Stew', style: TextStyle(
                    fontSize:16,
                  ),),
                  SizedBox(width: 10),
                  Text('+Follow', style: TextStyle(
                    fontSize:16,color: Colors.blueAccent,
                  ),),
                  SizedBox(width: 200,),
                  Icon(Icons.bookmark_border_outlined,size: 25,
                  )
                ],
              ),  Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    Text("Just Now",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w100
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("images/download (2).jpg",
                height:210,
                  width:MediaQuery.of(context).size.width,
                fit:BoxFit.fill,
              ),
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined,color: Colors.blue,),
                  SizedBox(width: 2,),
                  Text("Like",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.blue

                    ),),
                  SizedBox(width: 52,),
                  Icon(Icons.chat_outlined,color: Colors.grey.shade600,),
                  SizedBox(width: 2,),
                  Text("Comment",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.grey.shade600

                    ),),  SizedBox(width: 52,),
                  Icon(Icons.share_outlined,color: Colors.grey.shade600,),
                  SizedBox(width: 2,),
                  Text("Share",
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,
                        color: Colors.grey.shade600

                    ),),
                ],

              )


            ],
          ),
        ),

            ],
        ),
      ),

    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight:  Radius.circular(30)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff2FEBD4),
                  Color(0xff2FEBD4),
                  Color(0xff00D0EC),
                  Color(0xff00D0EC),
                  Color(0xff0094FF),
                  Color(0xff5796F4),
                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 40),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage:AssetImage('images/download (1).jpg'),
                radius: 50,
              ),
              SizedBox(height: 20,),
              Text("Faiza Awan",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,

                ),),
              SizedBox(height: 20,),
              ListTile(
                onTap: (){

                },
                title: Text("Social",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,
                      size: 17,)),
              ),
              ListTile(
                onTap: (){

                },
                title: Text("Music",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17)),
              ),
              ListTile(
                onTap: (){

                },
                title: Text("Status",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17)),
              ),
              ListTile(
                onTap: (){

                },
                title: Text("Profile",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17)),
              ),
              ListTile(
                onTap: (){

                },
                title: Text("Payment",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17)),
              ),
              ListTile(
                onTap: (){

                },
                title: Text("Settings",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                  ),),
                trailing: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17)),
              ),
              SizedBox(height: 100,),

              Container(
                width: 130,
                height: 30,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.login);
                    },
                    child: Text("Log Out",
                        style: TextStyle(
                            color: Colors.black
                        ))

                ),
              )

            ],
          ),
        )
    );
  }
}