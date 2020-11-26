import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int songNo) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$songNo.wav');
  }

  Widget buildKeys(Color color, int songNo) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(songNo);
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeys(Colors.red, 1),
              buildKeys(Colors.orange, 2),
              buildKeys(Colors.yellow, 3),
              buildKeys(Colors.green, 4),
              buildKeys(Colors.blue, 5),
              buildKeys(Colors.indigo, 6),
              buildKeys(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
