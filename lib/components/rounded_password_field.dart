import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_field_container.dart';
import 'package:flutter_application_1/constants.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: appPrimaryColor,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: appPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: appPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
