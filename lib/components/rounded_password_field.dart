import 'package:flutter/material.dart';
import 'package:recap_car_demo/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        style: TextStyle(color: kPrimaryColor, fontSize: 20),
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(

            hintText: "Şifre",
            hintStyle: TextStyle(color: kPrimaryColor, fontSize: 20),
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
