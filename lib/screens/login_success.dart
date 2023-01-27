import 'package:flutter/material.dart';
import 'package:social_app/screens/bottom_bar.dart';
import 'package:social_app/screens/home_screen.dart';

class LoginSuccess extends StatefulWidget {
  const LoginSuccess({Key? key}) : super(key: key);

  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 149.0,right: 250,left: 10),
                child: Text(
                  'Success',
                  style: TextStyle(
                    fontFamily: 'Poppins/Poppins-ExtraBold.ttf',
                    color: Color.fromRGBO(46, 50, 86, 1),
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,


                  ),
                ),

              ),
              SizedBox(height: 8,),

              Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                    'Thank you for sharing the details.',
                    style: TextStyle(
                      fontFamily: 'fonts/Poppins/Poppins-SemiBold.ttf',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),

              SizedBox(height: 80,),

              Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                    'Let’s help you connect with people in your neighbourhood now.',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),

              SizedBox(height: 25,),

              Container(
                padding: const EdgeInsets.only(right: 24,left: 24),
                height: 56,
                width: 400,
                child: ElevatedButton(child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins/Poppins-Medium.ttf',
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(21, 0, 80, 1),


                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => BottomBar()));
                    }


                ),

              ),
            ],
          ),
        ),
      ),

    );
  }
}
