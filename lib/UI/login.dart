import 'package:flutter/material.dart';
import 'package:geo_alert/Components/colors.dart';
import 'package:geo_alert/UI/signup.dart';

class Login extends StatefulWidget {
  @override
   LoginwithidState createState() =>  LoginwithidState();
}
class  LoginwithidState extends State <Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: kBlueColor1,
        titleSpacing: 30,
          actions: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
            ),
          ],
      ),
        backgroundColor:kWhiteColor,
        body: Wrap(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(500.0)),
                  child: Container(
                    color: kBlueColor3,
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                         // topRight: Radius.circular(500.0),
                          bottomRight: Radius.circular(300.0),
                        ),
                        child: Container(
                          color: kWhiteColor,
                          height: 80.0,
                          width: 80.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                         // topRight: Radius.circular(500.0),
                          bottomRight: Radius.circular(300.0),
                        ),
                        child: Container(
                          color: kBlueColor3,
                          height: 50.0,
                          width: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),

            Column(
                  children: <Widget>[
                  SizedBox(height:10.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0,vertical:150.0),
                      child: Form(
                        key: _formKey,
                        autovalidate: _autoValidate,
                    
                        child: Card(
                         elevation: 5.0,
                         
                          child: Padding(
                            
                            padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 20.0),
                            child: Column(
                              children: <Widget>[
                               
                                TextFormField(
                                   decoration: const InputDecoration(labelText: 'User Name',hoverColor: Colors.blue,focusColor: Colors.blue,fillColor: Colors.blue),
                                   cursorColor: kBlueColor2,
                                   keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 100.0,),
                               ButtonTheme(
                                  minWidth: 200.0,
                                  height: 50.0,
                                 child: RaisedButton(
                                   child: Text("Login"),
                                   color: kBlueColor2,
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              textColor:kWhiteColor,
                                   onPressed: () {
                                      Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => Login()
                                ));

                                   },
                                  splashColor: kBlueColor4,
                                 ),
                               ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
    );
  }
}