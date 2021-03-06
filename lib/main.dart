import 'package:flutter/material.dart';  

 void main() => runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
     title: 'LoginUI',
   )
 );

 class HomePage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       resizeToAvoidBottomPadding: false,
       resizeToAvoidBottomInset: false, // to avoid bottom overflow error
       body: Container( 
         width: double.infinity,
         decoration:BoxDecoration(
           gradient:LinearGradient(
             begin: Alignment.topCenter,
             colors: [
               Colors.orange[900],
               Colors.orange[800],
               Colors.orange[400]
             ]
           )
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[ 
              SizedBox(height: 100,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 40), ),
                    SizedBox(height: 2,) , 
                    Text("welcome back", style: TextStyle(color: Colors.white, fontSize: 20), ),  
                  ],
                )
              ),
              SizedBox(height: 10,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60) ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration:BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                              color: Color.fromRGBO(225,95,27, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10)
                            )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextField(
                                    decoration:InputDecoration(
                                      hintText: "Email or Phone",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    )
                                  ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextField(
                                    decoration:InputDecoration(
                                      hintText: "password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    )
                                  ),
                              )

                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                        Text("Forgot Password", style:TextStyle(color: Colors.grey)),
                        SizedBox(height: 40,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.orange[700] ),
                          child: Center(
                            child: Text("Login", style:TextStyle(color: Colors.white, fontWeight: FontWeight.w800 )),
                          ),
                        ),

                       // SizedBox(height: 80,),
                        // Row(
                        //   children: <Widget>[
                        //     Expanded(
                        //       child: Container(
                        //         height: 50,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(50),
                        //         ),
                        //       ),
                        //     )
                        //   ],
                        //)
                      ],
                    ),
                  ),
                ),
              )
           ],
         ),
       ),
     );
   }
 }