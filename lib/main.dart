import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int wavename) {
    final player = AudioCache();
    player.play('note$wavename.wav');
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        playsound(1);
                      },
                      child: null,
                    ),
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        playsound(2);
                      },
                      child: null,
                    ),
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        playsound(3);
                      },
                      child: null,
                    ),
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        playsound(4);
                      },
                      child: null,
                    ),
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        playsound(5);
                      },
                      child: null,
                    ),
                    color: Colors.teal,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        playsound(6);
                      },
                      child: null,
                    ),
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        playsound(7);
                      },
                      child: null,
                    ),
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
