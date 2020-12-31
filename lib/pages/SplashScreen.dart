import '../src/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: ThemeStyle.pink,
      //   centerTitle: true,
      //   title: Text(
      //     Constants.APP_NAME,
      //     style: ThemeStyle.appBarTitle,
      //   )
      // ),
      body: InkWell(
        onTap: () => Navigator.pushNamed(context, '/login'),
        child: Container(
          decoration: ThemeStyle.backgroundDecoration,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ThemeStyle.logoImage,
                ThemeStyle.logoFrontTitle,
              ],
            ),
          ),
        ),
      ),
    );
  }
}