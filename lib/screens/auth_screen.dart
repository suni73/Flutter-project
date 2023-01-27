

import 'package:flutter/material.dart';
import 'package:social_app/screens/Login_screen.dart';
import 'package:social_app/screens/User_Information.dart';
import 'package:social_app/screens/login_success.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(

                height: 102.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(

                    blurRadius: 15,
                    offset: Offset(0,0.1),
                    color: Color.fromRGBO(0,0,0,0.04),
                  ),
                  ],
                  //borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),

                ),

                child: Padding(
                  padding: const EdgeInsets.only(top: 47,right: 330,bottom: 15,left: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(131, 105, 204, 1),
                      boxShadow: [BoxShadow(

                        blurRadius: 7,
                        offset: Offset(0,3),
                        color: Colors.grey,
                      ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(222, 222, 222, 1),
                        width: 1,
                      ),

                    ),

                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Center(
                            child: IconButton(
                              icon:Icon(Icons.arrow_back_ios_rounded,
                              color: Colors.white,size: 22,) ,
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                              },

                            ),
                              //Icons.arrow_back_ios_rounded,
                             // color: Colors.white,
                             // size: 18,



                          ),
                        ),
                      ],
                    ),

                  ),
                ),



              ),



              Padding(
                padding: const EdgeInsets.only(top: 47.0,right: 200,left: 10),
                child: Text(
                  'Authenticate',
                  style: TextStyle(
                    fontFamily: 'Poppins/Poppins-ExtraBold.ttf',
                    color: Color.fromRGBO(46, 50, 86, 1),
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,


                  ),
                ),

              ),

              SizedBox(height: 10,),

              Padding(
                padding: EdgeInsets.only(left: 20.0,right: 100),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                    'We’ve sent an OTP on your email address. Please check your inbox.',
                    style: TextStyle(
                      fontFamily: 'fonts/Poppins/Poppins-SemiBold.ttf',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),

              SizedBox(height: 21,),

              Padding(
                padding: EdgeInsets.only(left: 22.0,),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                    'Enter OTP Code below',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),

              SizedBox(height: 23,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Container(
                      height: 50.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(222, 222, 222, 1),
                          width: 1,
                        ),
                      ),


                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 11.0,right: 11,left: 11,top: 16),
                        child: TextField(
                              style: TextStyle(
                                fontFamily: 'fonts/Poppins/Poppins-Medium.ttf',
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,


                              ),
                            ),
                      ),


                    ),
                  ),

                  SizedBox(width: 15,),

                    Container(
                      height: 50.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(222, 222, 222, 1),
                          width: 1,
                        ),
                      ),


                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 11.0,right: 11,left: 11,top: 16),
                        child: TextField(
                          style: TextStyle(
                            fontFamily: 'fonts/Poppins/Poppins-Medium.ttf',
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,


                          ),
                        ),
                      ),

                    ),

                  SizedBox(width: 15,),

                  Container(
                    height: 50.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(222, 222, 222, 1),
                        width: 1,
                      ),
                    ),


                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 11.0,right: 11,left: 11,top: 16),
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'fonts/Poppins/Poppins-Medium.ttf',
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,


                        ),
                      ),
                    ),

                  ),

                  SizedBox(width: 15,),

                  Container(
                    height: 50.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(222, 222, 222, 1),
                        width: 1,
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 11.0,right: 11,left: 11,top: 16),
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'fonts/Poppins/Poppins-Medium.ttf',
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,


                        ),
                      ),
                    ),

                  ),

                  SizedBox(width: 15,),

                  Container(
                    height: 50.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(222, 222, 222, 1),
                        width: 1,
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 11.0,right: 11,left: 11,top: 16),
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'fonts/Poppins/Poppins-Medium.ttf',
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,


                        ),
                      ),
                    ),

                  ),

                  SizedBox(width: 15,),

                  Container(
                    height: 50.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(222, 222, 222, 1),
                        width: 1,
                      ),
                    ),


                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 11.0,right: 11,left: 11,top: 16),
                      child: TextField(
                        style: TextStyle(
                          fontFamily: 'fonts/Poppins/Poppins-Medium.ttf',
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,


                        ),
                      ),
                    ),

                  ),



                ],
              ),

              SizedBox(height: 42,),

              Padding(
                padding: EdgeInsets.only(left: 22.0,),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                    'Resent OTP',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),

              SizedBox(height: 29,),

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
                          builder: (context) => UserInfo()));
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
