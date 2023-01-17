import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
//import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Sound());
}

void playSound(int i) {
  final player = AudioCache();
  player.play('note$i.wav');
}

Expanded Build(int x, Color color) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: () {
        playSound(x);
      },
      child: Container(
        color: color,
      ),
    ),
  );
}

class Sound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Build(1, Colors.red),
                Build(2, Colors.blue),
                Build(3, Colors.green),
                Build(4, Colors.purple),
                Build(5, Colors.yellow),
                Build(6, Colors.orange),
                Build(7, Colors.indigo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
