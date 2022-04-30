import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));


  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 Marine',
      theme: ThemeData(
        primaryColor: appPrimaryLightColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins'
      ),
      home: const WelcomeScreen(),
    );
  }
}