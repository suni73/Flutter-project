import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/screens/Login_screen.dart';

class AgreeToContinue extends StatefulWidget {
  const AgreeToContinue({super.key});

  @override
  State<AgreeToContinue> createState() => _AgreeToContinueState();
}

class _AgreeToContinueState extends State<AgreeToContinue> {

  _AgreeToContinueState(){
    selectedvalue = items[0];
  }

  final items = ['English','Spanish','German'];

  String selectedvalue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(
          //height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: Text(
                    'Welcome to MCP',
                    style: TextStyle(
                      fontFamily: 'Poppins/Poppins-ExtraBold.ttf',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,


                    ),
                  ),
                ),
                SizedBox(height: 25),
                //Container(height: 375,width: 480,
                Padding(
                  padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                  child: SvgPicture.asset(
                      'images/Frame.svg'
                  ),

                    ),


                SizedBox(height: 25),

                Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Container(alignment: Alignment.topLeft,
                    child: Text(
                        'Select Language to Continue',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color.fromRGBO(46, 50, 86, 1),
                          fontSize: 16,

                        ),
                      ),
                  ),
                ),

                // dropdown menu *********************
                SizedBox(height: 19),

                
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24.0),
                  child: DropdownButtonFormField(
                    value: selectedvalue,
                    items: items.map(
                            (e) => DropdownMenuItem(
                          child:
                          Text(e),value:e,)).toList(),

                    onChanged: (val) {
                      setState(() {
                        selectedvalue = val as String;
                      });
                    },
                    decoration: InputDecoration(
                      //contentPadding: EdgeInsets.only(le),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                    ),
                  ),
                ),


                SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0,right: 10.0),
                  child: RichText(textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Read our',
                        style:
                        TextStyle(
                          color: Color.fromRGBO(185, 186, 199, 1),
                          fontFamily: 'Poppins/Poppins-Medium.ttf',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,


                        ),
                        ),
                      TextSpan(
                        text: ' Privacy Policy.',
                        style:
                        TextStyle(
                          color: Color.fromRGBO(92, 67, 191, 1),
                          fontFamily: 'Poppins/Poppins-Medium.ttf',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,


                        ),
                      ),

                      TextSpan(
                        text: 'Tap "Agree and Continue" to accept the',
                        style:
                        TextStyle(
                          color: Color.fromRGBO(185, 186, 199, 1),
                          fontFamily: 'Poppins/Poppins-Medium.ttf',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,

                        ),
                      ),

                      TextSpan(
                        text: ' Terms of Services',
                        style:
                        TextStyle(
                          color: Color.fromRGBO(92, 67, 191, 1),
                          fontFamily: 'Poppins/Poppins-Medium.ttf',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,

                        ),
                      ),

                    ]),

                  ),
                ),

                SizedBox(height: 29,),

                Container(
                  padding: const EdgeInsets.only(right: 24,left: 24),
                  height: 56,
                  width: 400,
                  child: ElevatedButton(child: Text(
                    'Agree and Continue',
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
                        builder: (context) => LoginScreen()));
                      }


                    ),

                  ),
              ],
            ),
          ),
        ),
      ),

    );


  }
}
