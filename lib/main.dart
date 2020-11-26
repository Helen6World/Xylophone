import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(Color customColor, int audioNumber) {
    return Expanded(
      child: FlatButton(
          color: customColor,
          onPressed: () {
            playSound(audioNumber);
          }),
    );
  }

  void playSound(int audioNumber) {
    final audioPlayer = AudioCache(); //AudioPlayer();

    audioPlayer.play('note$audioNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.lightBlue, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
