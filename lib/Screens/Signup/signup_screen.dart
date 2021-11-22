import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/home_screen.dart';
import 'package:flutter_application_1/Screens/Login/login_screen.dart';
import 'package:flutter_application_1/Screens/Signup/components/dependent_form.dart';
import 'package:flutter_application_1/components/account_check.dart';
import 'package:flutter_application_1/components/background.dart';
import 'package:flutter_application_1/components/radio_list.dart';
import 'package:flutter_application_1/components/rounded_button.dart';
import 'package:flutter_application_1/components/rounded_input_field.dart';
import 'package:flutter_application_1/components/rounded_password_field.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
      child: Padding(
        padding: const EdgeInsets.only(top: 50,bottom: 50),
        child: SingleChildScrollView( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              RoundedInputField(
                hintText: "First Name",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Last Name",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RadioList(
                onValueSelected: (value)  {
                   // call dependent form
                }
              ),
              Container(
                child: DependentForm(),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                text: "SIGN UP",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen();
                      },
                    ),
                  );

                },
              ),
              AccountCheck(
                login: false,
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
              SizedBox(height: size.height * 0.03)
            ],
          ),
        ),
      ),
    ),
    );
  }


  
}

