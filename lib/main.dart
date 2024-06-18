import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/pages/splash%20screen.dart';
import 'package:my_app/values/colors.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.Blue)),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
