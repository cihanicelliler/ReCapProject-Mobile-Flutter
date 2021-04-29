import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recap_car_demo/Screens/Login/components/background.dart';
import 'package:recap_car_demo/Screens/Sign%20Up/signup_screen.dart';
import 'package:recap_car_demo/components/already_have_an_account_check.dart';
import 'package:recap_car_demo/components/rounded_button.dart';
import 'package:recap_car_demo/components/rounded_input_field.dart';
import 'package:recap_car_demo/components/rounded_password_field.dart';
import 'package:recap_car_demo/components/text_field_container.dart';
import 'package:recap_car_demo/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.08),
            Text(
              "GİRİŞ YAP",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset("assets/icons/login.svg",
                height: size.height * 0.35),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "E-mail",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "GİRİŞ YAP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
