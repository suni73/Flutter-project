import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/screen/home_screen.dart';
import 'package:food_delivery_app_ui/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[80],
        appBarTheme:AppBarTheme(
        color: const Color.fromRGBO(190,180,248,100),
        )),
      home: SplashScreen(),
    );
  }
}



