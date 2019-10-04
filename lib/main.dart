import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloPhone());



class XyloPhone extends StatelessWidget {


  createButton(int number, Color c){

      Expanded expandedButton = Expanded (child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
            child: Text(''),
            color: c,
            onPressed: (){
              AudioCache player = AudioCache();
              player.play('note${number}.wav');}
        ),
      ));
      return expandedButton;
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              createButton(1,Colors.yellow),
              createButton(2,Colors.orange),
              createButton(3,Colors.red),
              createButton(4,Colors.green),
              createButton(5,Colors.pink),
              createButton(6,Colors.purple)
            ],
          )),
    ));
  }
}

