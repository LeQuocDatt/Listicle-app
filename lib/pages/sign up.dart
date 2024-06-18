import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/sign%20in.dart';
import 'package:my_app/pages/splash%20screen.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text%20style.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool obscurePassword = true;
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
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
                  'Sign Up',
                  style: TextStyles.Montserrat.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 26),
                )
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name',
                      style: TextStyles.Montserrat.copyWith(
                          fontWeight: FontWeight.w500, fontSize: 14)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          border: InputBorder.none,
                          hintText: 'John Doe',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
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
                                setState(
                                    () => obscurePassword = !obscurePassword);
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
              Column(children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() => checkBox = !checkBox);
                        },
                        icon: Icon(
                          checkBox
                              ? Icons.check_box_rounded
                              : Icons.square_outlined,
                          color: checkBox ? AppColors.Blue : Colors.grey,
                        )),
                    Text.rich(TextSpan(
                        text: 'I agree with ',
                        style: TextStyles.Montserrat.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        children: <InlineSpan>[
                          TextSpan(
                              text: 'Terms ',
                              style:
                                  TextStyles.Montserrat.copyWith(fontSize: 18)),
                          TextSpan(
                              text: '& ',
                              style: TextStyles.Montserrat.copyWith(
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: 'Privacy',
                              style:
                                  TextStyles.Montserrat.copyWith(fontSize: 18))
                        ]))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor: MaterialStatePropertyAll(
                              checkBox ? AppColors.Blue : AppColors.Grey)),
                      onPressed: () {
                        setState(() => checkBox
                            ? Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Home()))
                            : null);
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                        child: Text(
                          'Sign Up',
                          style: TextStyles.Montserrat.copyWith(
                              color: Colors.white),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Stack(children: [
                    Divider(
                        indent: 10, endIndent: 230, color: Colors.grey[400]),
                    Center(
                      child: Text(
                        'Or sign up with',
                        style: TextStyles.Montserrat.copyWith(
                            height: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
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
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 35),
                        child: Image.asset(Images.Google),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text.rich(TextSpan(
                      text: 'Already have an account?',
                      style: TextStyles.Montserrat.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignIn(),
                                    ));
                              },
                            text: ' Sign In',
                            style: TextStyles.Montserrat)
                      ])),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
