import 'package:flutter/material.dart';

import 'app_screens/welcome.dart';


void main() => runApp(Home());

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Form App",
      theme: ThemeData(
        primaryColorBrightness: Brightness.dark,
      ),
      home: Welcome(),
    );
  }

}
