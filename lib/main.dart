import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ),);
}
class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int diceNumber1=1;
  int diceNumber2=1;

  void updateddice(){
    setState(() {
      diceNumber1=Random().nextInt(5)+1;
      diceNumber2=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: Container(
              color: Colors.greenAccent,
              child: Center(
                child: Row(
                  children: [
                    Expanded(child: Center(
                      child: Column(
                        children: [
                          Text('$diceNumber1',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white),),
                          Image.asset("android/assets/images/dice$diceNumber1.jpeg",height:150,width: 150,),
                          ElevatedButton(
                            onPressed: () {
                              updateddice();
                            },
                            child: Text('Roll'),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

