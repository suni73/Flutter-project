import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [Column(
              children: [Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:47.0,left: 24,),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/girl.jpg"),

                    ),



                  ),

                  SizedBox(width: 15,),
                  Padding(
                    padding: EdgeInsets.only(top:42,),
                    child: Container(alignment: Alignment.topLeft,
                      child: Text(
                        'Hello Neha',
                        style: TextStyle(
                          fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                          color: Color.fromRGBO(46, 50, 86, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                    ),
                  ),


                ],

              ),

                SizedBox(height: 23,),

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text('Messages',
                      style: TextStyle(
                        fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                        color: Color.fromRGBO(46, 50, 86, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,

                      ),),
                  ),
                ),

                SizedBox(height: 14,),

                Padding(
                  padding: const EdgeInsets.only(left:24,right: 24),
                  child: Container(
                    height: 185.0,
                    width: 355.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(222, 222, 222, 1),
                        width: 1,
                      ),
                    ),
//*****************chats*********************
                    child: Column(
                      children: [
                        Container(
                          child: Row(

                            children: [
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 8),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(
                                          height: 50,
                                          width: 50,
                                          image: AssetImage(
                                              "images/girl.jpg"
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),

                                    ),

                                  ),

                                  SizedBox(width: 16,),

                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 17.0,right: 69,bottom:5),
                                        child: Text('Logan Nesser',
                                          style: TextStyle(
                                            fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                            color: Color.fromRGBO(46, 50, 86, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,


                                          ),
                                        ),

                                      ),
                                      Text('Reply cuz I need to hear.........',
                                        style: TextStyle(
                                          fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                          color: Color.fromRGBO(185, 186, 199, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ),
                                    ],
                                  ),


                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top:25,left: 60.0),
                                    child: Text('25 min',
                                      style: TextStyle(
                                        fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                        color: Color.fromRGBO(46, 50, 86, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                  )
                                ],
                              ),
                            ],

                          ),
                        ),
//*********chat-2************
                        Container(
                          child: Row(

                            children: [
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 8),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(
                                          height: 50,
                                          width: 50,
                                          image: AssetImage(
                                              "images/girl.jpg"
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),

                                    ),

                                  ),

                                  SizedBox(width: 16,),

                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 17.0,right: 69,bottom:5),
                                        child: Text('Logan Nesser',
                                          style: TextStyle(
                                            fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                            color: Color.fromRGBO(46, 50, 86, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,


                                          ),
                                        ),

                                      ),
                                      Text('Reply cuz I need to hear.........',
                                        style: TextStyle(
                                          fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                          color: Color.fromRGBO(185, 186, 199, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ),
                                    ],
                                  ),


                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top:25,left: 60.0),
                                    child: Text('25 min',
                                      style: TextStyle(
                                        fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                        color: Color.fromRGBO(46, 50, 86, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                  )
                                ],
                              ),
                            ],

                          ),
                        ),

                        Container(
                          child: Row(

                            children: [
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 8),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(
                                          height: 50,
                                          width: 50,
                                          image: AssetImage(
                                              "images/girl.jpg"
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),

                                    ),

                                  ),

                                  SizedBox(width: 16,),

                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 17.0,right: 69,bottom:5),
                                        child: Text('Logan Nesser',
                                          style: TextStyle(
                                            fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                            color: Color.fromRGBO(46, 50, 86, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,


                                          ),
                                        ),

                                      ),
                                      Text('Reply cuz I need to hear.........',
                                        style: TextStyle(
                                          fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                          color: Color.fromRGBO(185, 186, 199, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ),
                                    ],
                                  ),


                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top:25,left: 60.0),
                                    child: Text('25 min',
                                      style: TextStyle(
                                        fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                        color: Color.fromRGBO(46, 50, 86, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                  )
                                ],
                              ),
                            ],

                          ),
                        ),

                        //******connection chats end****
                      ],
                    ),


                  ),
                ),


              ],
            )


            ],
          ),
        ),
      ),
    );
  }
}