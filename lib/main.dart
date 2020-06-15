import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  Expanded buildKey(Color keyColor, int position) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          player.play('note$position.wav');
        },
        padding: EdgeInsets.all(0),
        color: keyColor,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(Colors.red,1),
                buildKey(Colors.orange,2),
                buildKey(Colors.yellow,3),
                buildKey(Colors.green,4),
                buildKey(Colors.blue,5),
                buildKey(Colors.indigo,6),
                buildKey(Colors.purple,7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
