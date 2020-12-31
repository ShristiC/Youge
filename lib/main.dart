import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youge/pages/SplashScreen.dart';

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
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text(Constants.APP_NAME),
      //     centerTitle: true,
      //   ),
      //   body: Center(
      //     child: Text(" This is a place holder"),
      //   ),
      // ),
      home: SplashScreen(),
    );
  }
}

