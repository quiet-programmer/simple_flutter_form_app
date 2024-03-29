import 'package:flutter/material.dart';
import 'package:simple_login_form/app_screens/register.dart';
import 'welcome.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  var _maxmargin = 2.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(_maxmargin * 2),
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      logoImage(),

                      Container(
                        margin: EdgeInsets.only(top: _maxmargin * 20.0),
                        padding: EdgeInsets.only(right: _maxmargin * 10, left: _maxmargin * 10),
                        child:TextFormField(
                          controller: username,
                          // ignore: missing_return
                          validator: (String username){
                            if(username.isEmpty){
                              return "Please enter username";
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Username',
                              hintText: "Please enter username here",
                              labelStyle: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            errorStyle: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.yellow,
                            )
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: _maxmargin * 10.0),
                        padding: EdgeInsets.only(right: _maxmargin * 10, left: _maxmargin * 10),
                        child:TextFormField(
                          controller: password,
                          obscureText: true,
                          // ignore: missing_return
                          validator: (String password){
                            if(password.isEmpty){
                              return "Please enter password";
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: "Please enter password here",
                              labelStyle: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              errorStyle: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.yellow,
                              )
                          ),
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
                            'Login',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20.0,
                                fontFamily: 'Serif'
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              if(_formKey.currentState.validate()){
                                debugPrint("Login button is working fine");
                              }
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
                                return Register();
                              }));
                            });
                          },

                          child: Text(
                            "Not Registered Yet?",
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
              ),
            ),
        ),
    );
  }
}
