import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_app/Models/constants.dart';
import 'package:personal_app/screens/splash%20screen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      // statusBarColor is used to set Status bar color in Android devices.
      statusBarColor: mPrimaryColor,

      // To make Status bar icons color white in Android devices.
      statusBarIconBrightness: Brightness.light,

      // statusBarBrightness is used to set Status bar icon color in iOS.
      statusBarBrightness: Brightness.light,
      // Here light means dark color Status bar icons.
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal app',
      themeMode: ThemeMode.system,
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      home: SplachScreen(),
    );
  }
}

ThemeData lightTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xfff0f0f0),
    primaryColor: mPrimaryColor,
    textTheme: Theme.of(context).textTheme.apply(bodyColor: Color(0xff525252)),
    iconTheme: IconThemeData(color: mPrimaryColor),
    shadowColor: Colors.white,
  );
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
      scaffoldBackgroundColor: Color(0xff292929),
      primaryColor: mPrimaryColor,
      textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white70),
      iconTheme: IconThemeData(color: mPrimaryColor),
      shadowColor: Colors.black38);
}
