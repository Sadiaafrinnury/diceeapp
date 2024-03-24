import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 20,
          title: Center(child: Text("Dicee App",
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30),)),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
  }

  class _DicePageState extends State<DicePage> {
  int LeftDiceNumber=1;
  int rightDiceNumber=1;
  void changeDicePage(){
    LeftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber= Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(onPressed: (){
              setState(() {
               changeDicePage();
              });
            },
             child: Image.asset("Images/dice$LeftDiceNumber.png"),),
          ),
           Expanded(
            child: TextButton(onPressed: (){
              setState(() {
                changeDicePage();
              });
            },
              child: Image.asset("Images/dice$rightDiceNumber.png"),),),
        ],
      ),
    );
  }
}




