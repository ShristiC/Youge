import 'package:flutter/material.dart';

import '../src/utils/styles.dart';

class Login extends StatelessWidget {

  Widget _raiseButton(BuildContext context, String routename, String label) {   
    return SizedBox(
      width: 300,
      child: RaisedButton(
        onPressed: routename == null ? (){} : Navigator.pushNamed(context, routename),
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        color: ThemeStyle.purple,
        child: Text(
          label,
          style: ThemeStyle.subtitleLabel,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ThemeStyle.backgroundDecoration,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              ThemeStyle.logoImage,
              ThemeStyle.logoFrontTitle,

              SizedBox(width:10, height:10),

              Text(
                "Are you a...",
                style: ThemeStyle.subtitleLabel,
              ),

              SizedBox(width:10, height:10),

              _raiseButton(context, null, 'Volunteer'),
              _raiseButton(context, null, 'Youge Member'),
              _raiseButton(context, null, 'Care Taker / Guardian'),

              SizedBox(width:20, height:20),
              
              SizedBox(
                width: 300,
                height: 100,
                child: Text (
                  "A volunteer is one who can help a Youge member perform tasks" +
                  " and assist them via connected phone calls.",
                  softWrap: true,
                  style: ThemeStyle.miniLabel,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}