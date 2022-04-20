import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login/login_screen.dart';
import 'package:flutter_application_1/components/background.dart';
import 'package:flutter_application_1/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.06),
            SvgPicture.asset(
              "asset/images/splash_screen.svg",
              width: size.width * 0.04, 
              height: size.height * 0.22,             
            ),
            SizedBox(height: size.height * 0.04),
            const Text(
              "Lets get tested for Covid-19",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: size.height * 0.06), //child: DecoratedBox(decoration: BoxDecoration(border:Border.all(), color: Colors.black))
            SizedBox(
              height: size.height * 0.2,
              width: size.width * 0.6,
              child: const Text(
                "Help protect yourself and the people around you by getting tested through our app",
                textAlign: TextAlign.center,
                style: TextStyle( fontSize: 18),
              ),
            ),
            RoundedButton(
              text: "Get Started", 
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    )
    );
  }
}