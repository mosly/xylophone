import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int wavename) {
    final player = AudioCache();
    player.play('note$wavename.wav');
  }

  Expanded buildKey({Color color, int wavename}) {
    return Expanded(
      child: Container(
        child: TextButton(
          onPressed: () {
            playsound(wavename);
          },
          child: null,
        ),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, wavename: 1),
              buildKey(color: Colors.deepOrange, wavename: 2),
              buildKey(color: Colors.yellowAccent, wavename: 3),
              buildKey(color: Colors.green, wavename: 4),
              buildKey(color: Colors.teal, wavename: 5),
              buildKey(color: Colors.blue, wavename: 6),
              buildKey(color: Colors.purple, wavename: 7),
            ],
          ),
        ),
      ),
    );
  }
}
