import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youge/pages/SplashScreen.dart';
import './pages/LoginScreen.dart';

// import 'src/utils/constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
      routes: <String, WidgetBuilder> {
        '/landingpage' : (BuildContext context) => SplashScreen(),
        '/login' : (BuildContext context) => Login(),
      }
    );
  }
}

