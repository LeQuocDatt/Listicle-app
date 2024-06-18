import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/sign%20up.dart';
import 'package:my_app/pages/splash%20screen.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text%20style.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(children: [
          Row(children: [
            SizedBox(height: 100),
            BackButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen(),
                      ));
                },
                color: AppColors.Blue),
            Text(
              'Sign In',
              style: TextStyles.Montserrat.copyWith(
                  fontWeight: FontWeight.w600, fontSize: 26),
            )
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('E-mail',
                  style: TextStyles.Montserrat.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 14)),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      border: InputBorder.none,
                      hintText: 'example@gmail.com',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Text('Password',
                  style: TextStyles.Montserrat.copyWith(
                      fontWeight: FontWeight.w500, fontSize: 14)),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      border: InputBorder.none,
                      hintText: '**********',
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() => obscurePassword = !obscurePassword);
                          },
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ))),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    backgroundColor: MaterialStatePropertyAll(AppColors.Blue)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  child: Text(
                    'Sign In',
                    style: TextStyles.Montserrat.copyWith(color: Colors.white),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Stack(children: [
              Divider(indent: 10, endIndent: 230, color: Colors.grey[400]),
              Center(
                child: Text(
                  'Or sign in with',
                  style: TextStyles.Montserrat.copyWith(
                      height: 1, fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Divider(
                indent: 230,
                endIndent: 10,
                color: Colors.grey[400],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                  child: Image.asset(Images.Google),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text.rich(TextSpan(
                text: 'Don\'t have an account?',
                style: TextStyles.Montserrat.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));
                        },
                      text: ' Sign Up',
                      style: TextStyles.Montserrat)
                ])),
          )
        ]),
      ),
    ));
  }
}
