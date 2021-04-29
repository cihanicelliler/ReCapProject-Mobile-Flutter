import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recap_car_demo/Screens/Login/login_screen.dart';
import 'package:recap_car_demo/Screens/Sign%20Up/components/background.dart';
import 'package:recap_car_demo/Screens/Sign%20Up/components/or_divider.dart';
import 'package:recap_car_demo/Screens/Sign%20Up/components/social_icon.dart';
import 'package:recap_car_demo/components/already_have_an_account_check.dart';
import 'package:recap_car_demo/components/rounded_button.dart';
import 'package:recap_car_demo/components/rounded_input_field.dart';
import 'package:recap_car_demo/components/rounded_password_field.dart';
import 'package:recap_car_demo/constants.dart';
import 'package:recap_car_demo/methods/launch_url.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "KAYIT OL",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: kPrimaryColor),
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.4,
            ),
            RoundedInputField(
              hintText: "E-mail",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "KAYIT OL",
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/instagram.svg",
                  press: () {launchURL("https://www.instagram.com/cihanicelliler/");},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
