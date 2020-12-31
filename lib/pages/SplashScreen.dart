import '../src/utils/styles.dart';
import '../src/utils/constants.dart';
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
      body: Container(
        decoration: BoxDecoration(
          gradient: ThemeStyle.linGradient,
          boxShadow: [BoxShadow(blurRadius: 3.0, color: ThemeStyle.blue, offset: Offset(1.0, 1.0))] 
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(Constants.LOGO_PATH),
                  ),
                  // border: Border.all(color: ThemeStyle.darkPurple, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white, 
                      blurRadius: 5.0,
                      offset: Offset(0.5,0.5)
                    ),
                  ]
                ),
              ),
              // Image.asset(
              //   Constants.LOGO_PATH,

              // ),
              ThemeStyle.logoFrontTitle,
            ],
          ),
        ),
      ),
    );
  }
}