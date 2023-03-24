import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        backgroundColor: Colors.yellow,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var di=1;
  var dm=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.red,
        height: double.infinity,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              height: 200,
              width: 170,
              child: TextButton(onPressed: (){
                setState(() {
                  di=Random().nextInt(6)+1;
                });
                }, child: Image.asset('assets/images/dice$di.png'),)
            ),
          Container(
              height: 200,
              width: 170,
              child: TextButton(onPressed: (){
                   setState(() {
                                 dm=Random().nextInt(6)+1;
                              });
                    }, child: Image.asset('assets/images/dice$dm.png'),)
          ),
              
        ],
      )
      )
    );
  }
}