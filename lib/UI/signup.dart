import 'package:flutter/material.dart';
import 'package:geo_alert/Components/colors.dart';
import 'package:geo_alert/UI/login.dart';
import 'package:geo_alert/UI/splash.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 String validatename(String value){
    if(value.isEmpty){
      return 'Name field cannot be empty!';
    }
    else if(value.length<2){
      return 'Fill NameField correctly!';
    }
    else{
      return null;
    }
  }

String validatemobileNo(String value){
    if(value.toString().isEmpty){
      return 'Mobile Number cannot be empty!';
    }else if(value.length!=9) {
      return 'Number is not correct';
    }else if(value.contains(RegExp(r'[A-Z]'))){
      return 'Number is not correct!';
    }else{
      return null;
    }
  }

  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(
            2015,8),
        lastDate: DateTime(
            2101));
    if (picked != null && picked != selectedDate)
      setState(
              () {
            selectedDate = picked;
          });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: kWhiteColor,
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
                    Column(
                      children: <Widget>[
                        //
                        Text(
                          "",
                          style: TextStyle(
                              color: kBlueColor1,
                              fontSize: 130.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 60.0, color:kBlueColor5),
                        ),
                        
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                ' ',
                                style: TextStyle(
                                    fontSize: 10.0, color: kBlackColor),
                              )
                            ],
                          ),

                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Name',

                                labelStyle: TextStyle(color:kBlackColor),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                icon: Icon(
                                  Icons.person,
                                  color:kBlueColor2,
                                )),
                            obscureText: false,
                          ),

                         
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Mobile Number',

                                labelStyle: TextStyle(color: kBlackColor),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                icon: Icon(
                                  Icons.phone,
                                  color:kBlueColor2,
                                )),
                            obscureText: false,
                          ),

                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Birthday',

                                labelStyle: TextStyle(color:kBlackColor),

                                border: UnderlineInputBorder(

                                    borderSide: BorderSide.none),

                                icon: Icon(
                                  Icons.calendar_today,
                                  color: kBlueColor3,

                                )),
                            obscureText: false,
                          ),
                         Row(
                           children: <Widget>[
                             ButtonTheme(
                               height: 20.0,
                               minWidth: 20.0,
                               buttonColor:kBlueColor2,
                               child:RaisedButton(
                               onPressed: () => _selectDate(context),
                               child: Icon(Icons.arrow_drop_down),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 70.0,),
                          ButtonTheme(
                          
                            minWidth: 200.0,
                            height: 60.0,
                            child: RaisedButton(
                              color:kBlueColor3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),

                              textColor: kWhiteColor,
                              child: new Text("Register"),
                              onPressed: (){
                                 Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => Login()
                                ));

                              },
                              splashColor: kBlueColor4,

                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
