import 'package:flutter/material.dart'; 
import './constants.dart';

class ThemeStyle {
  // Primary Theme Colors
  static final yellow = Color(0xffFFDDB0);
  static final darkYellow = Color(0xffFFD54F);

  static final pink = Color(0xffF5B6DA);
  static final darkPink = Color(0xffF06292);

  static final purple = Color(0xffD2C2FD);
  static final darkPurple = Color(0xff9575CD);

  static final blue = Color(0xffBBDEFB);
  static final darkBlue = Color(0xff7986CB);

  /* Gradient Code : by default begins at Alignent.centerLeft and ends at Alignment.centerRight
    Gradieent with fractions: 2 -> 3, 1 each for solid, 1 for blended. By default set to second fraction
    Fractions go from 0 - 1 decimal value, 0 = beginning of first frac, 1 = end of last frac
    Tilemode: helps to create patterns - only available when each seciton of frac is visible


    Center(child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [yellow, pink],
          stops: [0.5, 1],
          tileMode: TileMode.clamp / TileMode.repated, TileMode.mirror, 
        )
      ),
    ))

  */

  static final linGradient = LinearGradient(
    begin: Alignment.topLeft, 
    end: Alignment.bottomRight,
    colors: [yellow, pink],
  );

  // LOGO Title Font
  static final baseLogoTitle = const TextStyle(fontFamily: 'Lobster Two');

  static final logoMainTitleStyle = baseLogoTitle.copyWith(
    color: Colors.white,
    fontSize: 70,
    fontStyle: FontStyle.italic,
    letterSpacing: 2.0,
    // shadows: [Shadow(blurRadius: 3.0, color: darkBlue, offset: Offset(1.0, 1.0))]
  );

  static final logoMainTitleBorderStyle = baseLogoTitle.copyWith(
    fontSize: 70,
    fontStyle: FontStyle.italic,
    letterSpacing: 2.0,
    // shadows: [Shadow(blurRadius: 40, color: darkBlue, offset: Offset(1.0, 1.0))],
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = darkPurple
    // foreground used when stacking letters
  );

  static final logoTitleOpaqueStyle = logoMainTitleStyle.copyWith(
    color: Colors.white.withOpacity(0.4),
  );

  static final logoTitleOpaqueBorderStyle = logoMainTitleBorderStyle.copyWith(
    shadows: [Shadow(blurRadius: 3.0, color: darkBlue.withOpacity(0.4), offset: Offset(1.0, 1.0))],
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = darkPurple.withOpacity(.4),
  );

  static final logoFrontTitle = Stack(
    children: <Widget>[
      Text(Constants.APP_NAME, style: logoMainTitleStyle),
      Text(Constants.APP_NAME, style: logoMainTitleBorderStyle),
    ],
  );

  static final logoWatermarkTitle = Stack(
    children: <Widget>[
      Text(Constants.APP_NAME, style: logoTitleOpaqueStyle),
      Text(Constants.APP_NAME, style: logoTitleOpaqueBorderStyle),
    ],
  );

  // regular fonts
  static final baseFont = TextStyle(fontFamily: 'Lobster_Two');

  static final appBarTitle = baseFont.copyWith(
    color: Colors.white,
    fontSize: 30,
    shadows: [Shadow(blurRadius: 2.0, color: darkPink, offset: Offset(1.0, 1.0))],
    letterSpacing: 1.0,
  );

  static final largeLabel = appBarTitle.copyWith(fontSize: 36);

  static final subtitleLabel = appBarTitle.copyWith(fontSize: 24);

  static final mainLabel = appBarTitle.copyWith(fontSize: 20);

  static final searchLabel = mainLabel.copyWith(fontSize: 20, fontWeight: FontWeight.w100);

}