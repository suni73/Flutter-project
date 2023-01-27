import 'package:flutter/material.dart';
import 'package:social_app/screens/home_page.dart';

class AddUsers extends StatefulWidget {
  const AddUsers({Key? key}) : super(key: key);

  @override
  State<AddUsers> createState() => _AddUsersState();
}

class _AddUsersState extends State<AddUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[


              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 75, left: 180),
                            child: Text('MCP',

                              style: TextStyle(
                                fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                color: Color.fromRGBO(46, 50, 86, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ),

                          SizedBox(width: 10),
                          //search
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(131, 105, 204, 1),
                                boxShadow: [BoxShadow(

                                  blurRadius: 7,
                                  offset: Offset(0, 3),
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
                                        icon: Icon(Icons.arrow_back_ios_new_rounded,
                                            color: Colors.white, size: 22),
                                        onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                        },

                                      ),
                                    ),
                                  ),

                                ],
                              ),

                            ),
                          ),




                        ],
                      ),
                      SizedBox(height: 40,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(

                          height: 100,
                          width: 100,
                          image: AssetImage(
                              "images/girl.jpg"
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Icon(Icons.camera_enhance,
                      color: Color.fromRGBO(131, 105, 204, 1),
                      ),

                      SizedBox(height: 10,),

                      Row(
                        children: [Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Icon(Icons.person),
                            )
                          ],
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 24,top: 17),
                                  child: Text('Rachel',
                                    style: TextStyle(
                                      fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                      color: Color.fromRGBO(46, 50, 86, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),




                              height: 48,
                              width: 290,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 0.5,
                                  color: Color.fromRGBO(233, 238, 243, 1),
                                ),
                                color: Colors.white,

                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      SizedBox(height: 21,),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0,right: 24),
                        child: Text('This is not your username or pin. This name will be visible to your WhatsApp contacts.',
                        style: TextStyle(
                          fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                          color: Color.fromRGBO(185, 186, 199, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),

                      SizedBox(height: 26,),

                      Row(
                        children: [Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Icon(Icons.phone_outlined),
                            )
                          ],
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24,top: 17),
                                child: Text('+91 870 029 2081',
                                  style: TextStyle(
                                    fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                    color: Color.fromRGBO(46, 50, 86, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              height: 48,
                              width: 290,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 0.5,
                                  color: Color.fromRGBO(233, 238, 243, 1),
                                ),
                                color: Colors.white,

                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 26,),

                      Row(
                        children: [Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Icon(Icons.mail),
                            )
                          ],
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24,top: 17),
                                child: Text('mailrachel@gmail.com',
                                  style: TextStyle(
                                    fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                    color: Color.fromRGBO(46, 50, 86, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              height: 48,
                              width: 290,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 0.5,
                                  color: Color.fromRGBO(233, 238, 243, 1),
                                ),
                                color: Colors.white,

                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 140,left: 280),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:Color.fromRGBO(131, 105, 204, 1)),

                          child: Icon(Icons.edit_rounded,
                          size: 25,
                          color: Colors.white,
                          ),
                          ),
                      ),
                      


                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ) ,
    );
  }
}
