import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

TextField roundedInputField(String text, IconData icon, bool isPasswordType,TextEditingController controller) {
  return TextField(
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: appButtonColor,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
        prefixIcon: Icon(
        icon,
        color: appPrimaryLightColor,
      ),
      hintText: text,
      hintStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
                color: appButtonColor,
                width: 1, 
                style: BorderStyle.solid,
            ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
                color: appButtonColor,
                width: 1, 
                style: BorderStyle.solid,
            ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(16),
        fillColor: Colors.white.withOpacity(0.3),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}


Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: appPrimaryColor),
          textAlign: TextAlign.right,
        ),
        onPressed: () => {},
      ),
    );
  }