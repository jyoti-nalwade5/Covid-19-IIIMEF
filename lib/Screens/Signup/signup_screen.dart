import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/home_screen.dart';
import 'package:flutter_application_1/Screens/Login/login_screen.dart';
import 'package:flutter_application_1/components/account_check.dart';
import 'package:flutter_application_1/components/background.dart';
import 'package:flutter_application_1/components/input_field.dart';
import 'package:flutter_application_1/components/rounded_button.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignUpScreen>{

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
      child: SingleChildScrollView( 
        child: Padding(
          padding: EdgeInsets.fromLTRB(size.width *0.06,size.height *0.06, size.width *0.06, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "SIGN UP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.04),
              roundedInputField(
                "Enter your FirstName", Icons.person_outline, false,firstNameController
              ),
              const SizedBox(height: 20),
              roundedInputField(
                "Enter your lastName", Icons.person_outline, false,lastNameController
              ),
              const SizedBox(height: 20),
              roundedInputField(
                "Enter your email", Icons.person_outline, false,emailController
              ),
              const SizedBox(height: 20),
              roundedInputField(
                "Enter your password", Icons.person_outline, true,passwordController
              ),
              const SizedBox(height: 20),
              // RadioList(
              //   onValueSelected: (value)  {
              //      // call dependent form
              //   }
              // ),
              // Container(
              //   child: DependentForm(),
              // ),
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


   




