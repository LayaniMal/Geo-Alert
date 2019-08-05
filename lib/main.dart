import 'package:flutter/material.dart';
import 'package:geo_alert/UI/splash.dart';
import 'package:geo_alert/Components/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Geo Alert',
      home:Splash()
    );
  }
}