import 'package:flutter/material.dart';
import 'package:social_app/screens/login_success.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {

  _UserInfoState(){
    selectedvalue = items[0];
    selectedgender = gender[0];
    selectedlang   = langSpoken[0];
    selectedOccu   = occupation[0];
  }

  final items = ['Item1','Item2','Item3'];
  final gender = ['Male','Female','Others'];
  final langSpoken = ['English','Spanish','German'];
  final occupation = ['Doctor','Architect','Engineer'];

  String selectedvalue = '';
  String selectedgender = '';
  String selectedlang = '';
  String selectedOccu = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:70,left: 24.0,right: 100),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                    'Kindly allow us to know you better',
                    style: TextStyle(
                      fontFamily: 'fonts/Poppins/Poppins-SemiBold.ttf',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),

              Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                    'It will only take a minute',
                    style: TextStyle(
                      fontFamily: 'fonts/Poppins/Poppins-SemiBold.ttf',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),

              SizedBox(height: 19),

              Column(
                children: [

                  Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2,
                            color: Color.fromRGBO(233, 238, 243, 1)),
                      ),
                      hintText: '     First Name',

                    ),
                  ),
                ),

                  SizedBox(height: 19,),

                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2,
                              color: Color.fromRGBO(233, 238, 243, 1)),
                        ),
                        hintText: '     Last Name',

                      ),
                    ),
                  ),
                  SizedBox(height: 19,),

                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24.0),
                    child: DropdownButtonFormField(
                      value: selectedgender,
                      items: gender.map(
                              (e) => DropdownMenuItem(
                            child:
                            Text(e),value:e,)).toList(),

                      onChanged: (val) {
                        setState(() {
                          selectedgender = val as String;
                        });
                      },
                      decoration: InputDecoration(
                        //labelText: "Gender",

                        //contentPadding: EdgeInsets.only(le),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 19,),

                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24.0),
                    child: DropdownButtonFormField(
                      value: selectedlang,
                      items: langSpoken.map(
                              (e) => DropdownMenuItem(
                            child:
                            Text(e),value:e,)).toList(),

                      onChanged: (val) {
                        setState(() {
                          selectedlang = val as String;
                        });
                      },
                      decoration: InputDecoration(
                        //labelText: "Language Spoken",
                        //contentPadding: EdgeInsets.only(le),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 19,),

                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24.0),
                    child: DropdownButtonFormField(
                      value: selectedOccu,
                      items: occupation.map(
                              (e) => DropdownMenuItem(
                            child:
                            Text(e),value:e,)).toList(),

                      onChanged: (val) {
                        setState(() {
                          selectedOccu = val as String;
                        });
                      },
                      decoration: InputDecoration(
                        //labelText: "Language Spoken",
                        //contentPadding: EdgeInsets.only(le),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 19,),
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
                        //labelText: "Language Spoken",
                        //contentPadding: EdgeInsets.only(le),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 19,),

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
                        //labelText: "Language Spoken",
                        //contentPadding: EdgeInsets.only(le),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 19,),

                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24),
                    child: Container(

                      height: 56.0,
                      width: 355.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(222, 222, 222, 1),
                          width: 1,
                        ),
                      ),

                      child: Stack(
                        children: const [

                          Padding(
                            padding: EdgeInsets.only(right:200,left: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Current Location',
                                style: TextStyle(
                                  fontFamily: 'fonts/Poppins/Poppins-Medium.ttf',
                                  color: Color.fromRGBO(38, 42, 80, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,


                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 300),
                            child: Center(child: Icon(Icons.location_on_outlined)),
                          ),


                        ],
                      ),


                    ),
                  ),

                  SizedBox(height: 19,),

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
                        //labelText: "Language Spoken",
                        //contentPadding: EdgeInsets.only(le),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                    ),
                  ),

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
                        //labelText: "Language Spoken",
                        //contentPadding: EdgeInsets.only(le),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 19,),

                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24),
                    child: Container(

                      height: 56.0,
                      width: 355.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(222, 222, 222, 1),
                          width: 1,
                        ),
                      ),

                      child: Stack(
                        children: const [

                          Padding(
                            padding: EdgeInsets.only(right:212,left: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Upload Photo',
                                style: TextStyle(
                                  fontFamily: 'fonts/Poppins/Poppins-Medium.ttf',
                                  color: Color.fromRGBO(38, 42, 80, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,


                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 300),
                            child: Center(child: Icon(Icons.photo_outlined)),
                          ),


                        ],
                      ),


                    ),
                  ),





                ],
              ),

              SizedBox(height: 20,),


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
                          builder: (context) => LoginSuccess()));
                    }


                ),

              ),

              SizedBox(height: 20,),
            ],
          ),

        ),
      ),
    );
  }
}

