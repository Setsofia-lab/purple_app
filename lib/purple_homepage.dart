// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('images/red.png')
          ),
          Positioned(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:200),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text('Sign into your account', 
                    style: TextStyle(fontSize: 25, color: Colors.red),),
                  ),
                ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Container(
                       //mainAxisAlignmnent:MainAxisAlignment.center,
                       width: MediaQuery.of(context).size.width,
                       child: SizedBox(
                         width: MediaQuery.of(context).size.width,
                         child: Text('Username and Email', 
                         style: TextStyle(fontSize: 15, color: Colors.white54), 
                         textAlign: TextAlign.left,),
                       ),
                     ),
                   ),
                   Container( 
                     width: MediaQuery.of(context).size.width,
                     child: Container(
                       color: Colors.white54,
                       width: MediaQuery.of(context).size.width,
                       child: TextField(
                              decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'email@example.com', 
                              hintStyle: TextStyle(fontSize: 10, color: Colors.white54),),
                       ),
                     ),
                   ),
                    Container(
                      
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                           'Password', 
                       style: TextStyle(fontSize: 15, color: Colors.white54), 
                       textAlign: TextAlign.left,
                       ),
                    ),
                 Container(
                   color: Colors.white54,
                   width: MediaQuery.of(context).size.width,
                   child: TextField(
                            
                            decoration: InputDecoration( fillColor: Colors.red,
                            border: OutlineInputBorder(),
                            hintText: '********', 
                            hintStyle: TextStyle(fontSize: 10, color: Colors.white),),

                   ),
                   
                 ),
                 SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [Text(
                           'Remember me', 
                       style: TextStyle(fontSize: 10, color: Colors.white54), 
                       textAlign: TextAlign.left,
                       ),
                     Text(
                           'Forgot Password?', 
                       style: TextStyle(fontSize: 10, color: Colors.red), 
                       textAlign: TextAlign.left,
                       ),  

                   ],
                 ) ,
                 
                 const SizedBox(height: 50),
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                
                //style: style,
                onPressed: () {},
                child: const Text('Sign In'),
                //width: MediaQuery.of(context).size.width,
                
              ),
            ),
            const SizedBox(height: 30),
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                //style: style,
                onPressed: () {},
                child: const Text('Sign Up'),
               ),
            ),
            SizedBox(height: 10,),
             Text(
                           'OR', 
                       style: TextStyle(fontSize: 20, color: Colors.white), 
              ), 
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: OutlinedButton(
                    onPressed: (){}, 
                    child: Text('Google'),
                    
                  ),
                ),
                  SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: OutlinedButton(
                    onPressed: (){}, 
                    child: Text('Facebook'),
                    
                  ),
                ),


              ],)
              
              ],
                       
                   
                           ),
          ))
        

        ],),
      ),
    );
  }
}
