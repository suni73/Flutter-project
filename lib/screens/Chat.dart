import 'package:flutter/material.dart';
import 'package:social_app/screens/bottom_bar.dart';
import 'package:social_app/screens/home_page.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}
class _ChatState extends State<Chat> {
  _buildMessageComposer(){
    return Padding(
      padding: const EdgeInsets.only(top: 350),
      child: Container(
        //padding: EdgeInsets.only(top: 350),
        height: 70,
        color: Color.fromRGBO(38, 42, 80, 250),
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.photo),
              iconSize: 25,
              color: Color.fromRGBO(131, 105, 204, 100),

              onPressed: () {},
            ),

            Expanded(child:
            TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value){},
              decoration: InputDecoration.collapsed(

                hintText: 'Send a message....',
              ),

            ),
            ),

            IconButton(icon: Icon(Icons.send),
              iconSize: 25,
              color: Color.fromRGBO(131, 105, 204, 100),

              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }



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
                    offset: Offset(0,0.4),
                    color: Color.fromRGBO(0,0,0,0.2),
                  ),
                  ],
                  //borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),

                ),

                child: Padding(
                  padding: const EdgeInsets.only(top: 47,left: 24,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(233, 238, 243, 1),
                         // boxShadow: [BoxShadow(

                         //   blurRadius: 7,
                         //   offset: Offset(0,3),
                        //    color: Colors.grey,
                        //  ),
                       //   ],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
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
                                    color: Colors.black,size: 22,) ,
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(
                                        builder: (context) => BottomBar()));
                                  },

                                ),



                              ),
                            ),
                          ],
                        ),

                        height: 40,
                        width: 40,

                      ),

                      SizedBox(width: 16,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          height: 50,
                          width: 45,
                          image: AssetImage(
                              "images/girl.jpg"
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2,top: 10),
                            child: Text('Rachel Green',

                              style: TextStyle(
                                fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                color: Color.fromRGBO(46, 50, 86, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,


                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text('Today at 2:30 pm',

                              style: TextStyle(
                                fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                                color: Color.fromRGBO(185, 186, 199, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,


                              ),),
                          )
                        ],
                      )
                    ],
                    
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  child:Center(
                    child: Text('Hey Alison I just received your request',
                      style: TextStyle(
                        fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  height: 48,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(17),
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17)
                    ),

                    color: Color.fromRGBO(131, 105, 204, 1),

                  ),
                ),
              ),

              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.only(right: 135.0),
                child: Container(
                  child:Center(
                    child: Text('I love your designs. Aron!',
                      style: TextStyle(
                        fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  height: 48,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(17),
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17)
                    ),

                    color: Color.fromRGBO(131, 105, 204, 1),

                  ),
                ),
              ),


              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Container(
                  child:Center(
                    child: Text('Thank you Alison.😊',
                      style: TextStyle(
                        fontFamily: 'fonts/Poppins/Poppins-Regular.ttf',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  height: 48,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17)
                    ),

                    color: Color.fromRGBO(131, 105, 204, 1),

                  ),
                ),
              ),

              _buildMessageComposer()
            ],

          ),

        ),
      ),
    );
  }
}

