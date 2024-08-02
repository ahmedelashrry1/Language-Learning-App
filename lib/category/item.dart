// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:touke/models/number.dart';

class item extends StatelessWidget {
  final Number number;
  final Color color;

  const item({Key? key, required this.number, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Image.asset(number.image ?? ''),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.gpName ?? '',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  number.enName ?? '',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  try {
                    await player.play(AssetSource('assets/sound/numbers.mp3'));
                  } catch (e) {
                    print("Error playing sound: $e");
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 32,
                ),
              )),
        ],
      ),
    );
  }
}

class Phrasesitem extends StatelessWidget {
  final Number number;
  final Color color;
  const Phrasesitem({Key? key, required this.number, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.gpName ?? '',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  number.enName ?? '',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  try {
                    await player.play(AssetSource('assets/sound/numbers.mp3'));
                  } catch (e) {
                    print("Error playing sound: $e");
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 32,
                ),
              )),
        ],
      ),
    );
  }
}
