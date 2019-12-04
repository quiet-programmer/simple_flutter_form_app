import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_login_form/app_screens/login.dart';


class Welcome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return WelcomeState();
  }

}

class WelcomeState extends State<Welcome> {

  @override
  void initState() {

    super.initState();
    debugPrint("Splash screen has started");
    Timer(Duration(seconds: 5), done);
  }

  void done(){
    debugPrint("Done with the process");
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return Login();
    }));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          //first element
          logoImage(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              //first element
              Text(
                "Read Free",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Cursive',
                    fontSize: 40.0,
                    color: Colors.white
                ),
              ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //first element
              Container(
                margin: EdgeInsets.only(top: 60.0),
                child: Text(
                  "De-Future Elite Technology",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Serif',
                    color: Colors.white70
                  ),
                ),
              )

            ],
          )

        ],
      )
    );
  }

}

Widget logoImage(){

  AssetImage assetImage = AssetImage("images/book.png");
  Image image = Image(image: assetImage, width: 150.0, height: 150.0,);

  return Container(
    child: image,
  );
}