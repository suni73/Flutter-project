import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:social_app/screens/auth_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final CountryPicker = const FlCountryCodePicker();
  CountryCode ? countryCode;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 149.0, right: 298),
                child: Text(
                  'Hey',
                  style: TextStyle(
                    fontFamily: 'Poppins/Poppins-ExtraBold.ttf',
                    color: Color.fromRGBO(46, 50, 86, 1),
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter your UserId',
                    style: TextStyle(
                      fontFamily: 'fonts/Poppins/Poppins-SemiBold.ttf',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Use an email address',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2,
                      color: Color.fromRGBO(233, 238, 243, 1)),
                    ),
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(
                      Icons.mail_outline_rounded,
                      size: 24,
                      color: Color.fromRGBO(46, 50, 86, 1),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'or Phone number',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Container(
                      height: 56.0,
                      width: 138.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(233, 238, 243, 1),
                          width: 2,
                        ),
                      ),





                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () async {
                            final code =
                                await CountryPicker.showPicker(context: context);
                            setState(() {
                              countryCode= code;
                            });
                          },

                            child: Row(
                              children: [
                                Container(
                                  child: countryCode != null ? countryCode!.flagImage : null,
                                  height: 40,
                                  width: 40,
                                ),

                                SizedBox(width: 10,),

                                Container(
                                  padding: const EdgeInsets.only(right:20),


                            child: Text(
                              countryCode?.dialCode ??
                              "Country",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),)
                            ),
                              ],
                            ),

                        ),
                      ),



                    ),


                  ),
                  SizedBox(width: 10,),

                  Container(
                    height: 55,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        prefixIcon: Icon(
                        Icons.phone_outlined,
                          size: 22,
                          color: Color.fromRGBO(46, 50, 86, 1),
                        ),


                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2,
                            color: Color.fromRGBO(233, 238, 243, 1))
                        ),
                        





                        ),
                        //hintText: 'Phone number',
                        //prefixIcon: Icon(
                         /* Icons.phone_outlined,
                          size: 22,
                          color: Color.fromRGBO(46, 50, 86, 1),
                        ),*/
                        //focusedBorder: OutlineInputBorder(
                         // borderSide: BorderSide(
                          //  color: Colors.purple),
                          ),
                        ),
                        




                  SizedBox(
                    width: 10,
                  ),

                ],
              ),

              SizedBox(
                height: 16,
              ),
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
                          builder: (context) => AuthScreen()));
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
