import 'package:flutter/material.dart';
import 'package:social_app/screens/Chat.dart';
import 'package:social_app/screens/bottom_bar.dart';
import 'package:social_app/screens/chat_page.dart';
import 'package:social_app/screens/home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
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
                                      icon: Icon(Icons.search,
                                          color: Colors.white, size: 25),
                                      onPressed: () {
                                        Navigator.push(
                                            context, MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen()));
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
                  ),
                ),
//*************************************************************************************
                SizedBox(height: 40,),

                Padding(
                  padding: const EdgeInsets.only(left: 27,right: 27),
                  child: Row(
                    children: [
                      Container(
                      child:Center(
                      child: Text('Chats',
                        style: TextStyle(
                          fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                          color: Color.fromRGBO(46, 50, 86, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      ),

                      height: 48,
                      width: 112,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            bottomLeft: Radius.circular(17),
                          ),
                          border: Border.all(width: 0.5,
                            color: Color.fromRGBO(233, 238, 243, 1),
                          ),
                          color: Colors.white,

                        ),
                   ),

                      Container(
                        child:Center(
                          child: Text('Status',
                            style: TextStyle(
                              fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                              color: Color.fromRGBO(46, 50, 86, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        height: 48,
                        width: 112,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            bottomLeft: Radius.circular(0),
                          ),
                          border: Border.all(width: 0.5,
                            color: Color.fromRGBO(233, 238, 243, 1),
                          ),
                          color: Colors.white,

                        ),
                      ),

                      Container(
                        child:Center(
                          child: Text('Calls',
                            style: TextStyle(
                              fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                              color: Color.fromRGBO(46, 50, 86, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        height: 48,
                        width: 112,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(17),
                            bottomRight: Radius.circular(17),
                          ),
                          border: Border.all(width: 0.5,
                            color: Color.fromRGBO(233, 238, 243, 1),
                          ),
                          color: Colors.white,

                        ),
                      ),

                    ],
                  ),
                ),
//****************************************************************************
                SizedBox(height: 23,),

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text('Connections',
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
                        GestureDetector(
                            child: Container(
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
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Chat(),
                            ),
                          ),
                        ),

//*********chat-2************
                        GestureDetector(

                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Chat(),
                            ),
                          ),
                          child: Container(
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

                SizedBox(height: 16,),

                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text('See more',
                      style: TextStyle(
                        //fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                        color: Color.fromRGBO(49, 90, 254, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),
                ),
////******************************************Connection end here*************
                SizedBox(height: 23,),

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text('Groups',
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

                SizedBox(height: 16,),

                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text('See more',
                        style: TextStyle(
                          //fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                          color: Color.fromRGBO(49, 90, 254, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),),
                    ),
                  ),
                ),
                ///*************************Groups end here********************************************************************************

                SizedBox(height: 23,),

                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text('Connections Requests',
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

                SizedBox(height: 16,),

                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text('See more',
                        style: TextStyle(
                          //fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                          color: Color.fromRGBO(49, 90, 254, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),),
                    ),
                  ),
                ),

                SizedBox(height: 20,),












              ],
            ),
          ),
        )
    );
  }
}
