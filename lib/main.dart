import 'package:flutter/material.dart';
import 'package:flutter_app2/screens/on_boarding.dart';
import 'package:flutter_app2/screens/home_screen.dart';
import 'package:flutter_app2/utilities/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  if( seen == null || seen == false){
    _screen = OnBoarding();
  }else{
    _screen =  HomeScreen();
  }

  runApp(NewsApp(_screen));
}

class NewsApp extends StatelessWidget {

  final Widget _screen;
  NewsApp(this._screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: this._screen,
    );
  }
}
