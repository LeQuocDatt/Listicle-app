import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/sign%20in.dart';
import 'package:my_app/pages/sign%20up.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text%20style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(child: Image.asset(Images.SplashScreen)),
          Expanded(
              child: Center(
            child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text: 'You\'ll Find',
                    style: TextStyles.DMSans.copyWith(color: Colors.black),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: '\nAll you need',
                          style: TextStyles.DMSans.copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.Orange)),
                      TextSpan(
                          text: '\nHere!',
                          style: TextStyle(color: Colors.black))
                    ])),
          )),
          Expanded(
              child: Column(children: [
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
                  backgroundColor: MaterialStatePropertyAll(AppColors.Blue),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  child: Text(
                    'Sign Up',
                    style: TextStyles.Montserrat.copyWith(color: Colors.white),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text('Sign In',
                      style: TextStyles.Montserrat.copyWith(
                          color: AppColors.Blue))),
            )
          ]))
        ],
      ),
    );
  }
}
