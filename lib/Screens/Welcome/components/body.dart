import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recap_car_demo/Screens/Login/login_screen.dart';
import 'package:recap_car_demo/Screens/Sign%20Up/signup_screen.dart';
import 'package:recap_car_demo/Screens/Welcome/components/background.dart';
import 'package:recap_car_demo/components/rounded_button.dart';
import 'package:recap_car_demo/constants.dart';

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
              "HOŞGELDİNİZ!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset("assets/icons/car-rent.svg",
                height: size.height * 0.45),
            RoundedButton(
              text: "GİRİŞ YAP",
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
            RoundedButton(
              text: "KAYIT OL",
              color: kPrimaryLightColor,
              textColor: Colors.black,
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
