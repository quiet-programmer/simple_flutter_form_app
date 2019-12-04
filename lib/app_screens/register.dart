import 'package:flutter/material.dart';
import 'package:simple_login_form/app_screens/login.dart';
import 'welcome.dart';


class Register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterState();
  }

}

class RegisterState extends State<Register>{

  var _maxmargin = 2.0;

  var _formKey = GlobalKey<RegisterState>();

  TextEditingController fname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassoword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  height: 20.0,
                ),

                logoImage(),

                Container(
                  margin: EdgeInsets.only(top: _maxmargin * 20.0),
                  padding: EdgeInsets.only(right: _maxmargin * 10, left: _maxmargin * 10),
                  child:TextFormField(
                    controller: fname,
                    // ignore: missing_return
                    validator: (String value){
                      if(value.isEmpty){
                        return "Full name is empty";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Full Name',
                        hintText: "Please enter full name here",
                        labelStyle: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: _maxmargin * 5.0),
                  padding: EdgeInsets.only(right: _maxmargin * 10, left: _maxmargin * 10),
                  child:TextFormField(
                    controller: username,
                    decoration: InputDecoration(
                        labelText: 'Username',
                        hintText: "Please enter username here",
                        labelStyle: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: _maxmargin * 5.0),
                  padding: EdgeInsets.only(right: _maxmargin * 10, left: _maxmargin * 10),
                  child: TextFormField(
                    controller: phoneNo,
                    decoration: InputDecoration(
                        labelText: 'Phone',
                        hintText: "Please enter Phone here",
                        labelStyle: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: _maxmargin * 5.0),
                  padding: EdgeInsets.only(right: _maxmargin * 10, left: _maxmargin * 10),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: "Please enter Mail here",
                        labelStyle: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: _maxmargin * 5.0),
                  padding: EdgeInsets.only(right: _maxmargin * 10, left: _maxmargin * 10),
                  child: TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: "Please enter Phone here",
                        labelStyle: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: _maxmargin * 10.0),
                  padding: EdgeInsets.only(right: _maxmargin * 10, left: _maxmargin * 10),
                  child: RaisedButton(
                    color: Colors.lightBlueAccent,
                    textColor: Theme.of(context).primaryColorLight,
                    elevation: 10.0,
                    child: Text(
                      'Register',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Serif'
                      ),
                    ),
                    onPressed: (){
                      setState(() {

                      });
                    },
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: _maxmargin * 5),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        debugPrint('gesture is been press');
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Login();
                        }));
                      });
                    },

                    child: Text(
                      "Already have an Account?",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Serif',
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                )

              ],
            )
          ],
        )


      ),
    );
  }
}