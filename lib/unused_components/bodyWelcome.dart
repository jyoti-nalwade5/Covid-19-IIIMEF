import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login/login_screen.dart';
import 'package:flutter_application_1/components/background.dart';
import 'package:flutter_application_1/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);  //newly added

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;    // size: total height and width of the screen
      return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.06),
            SvgPicture.asset(
              "asset/images/splash_screen.svg",
              height: size.height * 0.20,
              width: size.width * 0.20,
            ),
            SizedBox(height: size.height * 0.06),
            const Text(
              "Lets get tested for Covid-19",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: size.height * 0.04,width: size.width*0.4,),//child: DecoratedBox(decoration: BoxDecoration(border:Border.all(), color: Colors.black))
            SizedBox(
              height: size.height * 0.2,
              width: size.width * 0.6,
              child: const Text(
                "Help protect yourself and the people around you by getting tested through our app",
                style: TextStyle( fontSize: 20),
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
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
