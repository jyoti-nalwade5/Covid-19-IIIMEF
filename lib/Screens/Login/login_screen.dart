import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/background.dart';
import 'package:flutter_application_1/Screens/Signup/signup_screen.dart';
import 'package:flutter_application_1/components/account_check.dart';
import 'package:flutter_application_1/components/rounded_button.dart';
import 'package:flutter_application_1/components/input_field.dart';
import 'package:flutter_svg/svg.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(size.width *0.06, 10, size.width *0.06, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.04),
              const Text(
                "Welcome!",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.04),
              SvgPicture.asset(
              "asset/images/doctors.svg",
                height: size.height * 0.20,
                width: size.width * 0.4,
              ),
              SizedBox(height: size.height * 0.05),
              roundedInputField(
                "Enter User Name", Icons.person_outline, false,emailController
              ),
              const SizedBox(height: 20),
              roundedInputField(
                "Enter Password", Icons.lock, true,passwordController
              ), 
              const SizedBox(height: 15),         
              forgetPassword(context),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                text: "LOGIN",
                textColor: Colors.white,
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
              AccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return  const SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
