import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/screen/home_screen.dart';


class  SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 30), (){
      Navigator.pushReplacement(
          context, 
          MaterialPageRoute(
              builder: (context) => HomeScreen(),
      ));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(190,180,248,100),
        child:Center(child: Text('Foodico',style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),

          ),),
      ),
    );
  }
}


