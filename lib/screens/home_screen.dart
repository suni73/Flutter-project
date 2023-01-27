import 'package:flutter/material.dart';
import 'package:social_app/screens/bottom_bar.dart';

import 'package:social_app/screens/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  _HomeScreenState(){
    selectedvalue = items[0];
  }

  final items = ['Item1','Item2','Item3'];

  String selectedvalue = '';

  double _currentValue = 100;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
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
              Padding(
                padding: EdgeInsets.only(top:50,left:29),
                child: Container(alignment: Alignment.topLeft,
                  child: Text(
                    'Let’s get you connected by',
                    style: TextStyle(
                      fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                      color: Color.fromRGBO(46, 50, 86, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ),
              ),

              SizedBox(height: 27,),

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

              SizedBox(height: 18,),


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

              SizedBox(height: 18,),


              Padding(
                padding: const EdgeInsets.only(left:24,right: 24),
                child: Container(

                  height: 135.0,
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
                    children: [

                      Padding(
                        padding: EdgeInsets.only(top: 20,right:200,left: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Choose Radius',
                            style: TextStyle(
                              fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                              color: Color.fromRGBO(38, 42, 80, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,


                            ),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top:15),
                        child: Slider(
                          min: 0,
                          max: 120,
                          divisions: 120,
                          activeColor: Color.fromRGBO(131, 105, 204, 1),
                           // inactiveColor: Color.fromRGBO(131, 105, 204, 1),
                            //label: _currentValue.round().toString(),
                            thumbColor: Color.fromRGBO(21, 0, 80, 1),


                            value: _currentValue,
                            onChanged: (value) {
                              setState(() {
                                _currentValue = value;
                              });
                            }

                            ),

                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 24,top: 105),
                        child: Text('${_currentValue.round()} Km',
                        style: TextStyle(
                          color: Color.fromRGBO(21, 0, 80, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),),
                      )






                    ],
                  ),


                ),
              ),

              SizedBox(height: 18,),


              Container(

                padding: const EdgeInsets.only(right: 24,left: 24),
                height: 56,
                width: 400,
                child: ElevatedButton(child: Text(
                  'Search',
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
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomBar()
                      ),
                  );*/
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
