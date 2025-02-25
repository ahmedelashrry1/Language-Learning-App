// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:touke/category/item.dart';
import 'package:touke/models/number.dart';

class Phrases extends StatelessWidget {
  final List<Number> numbers = [
    Number(
        image: 'assets/images/a.png',
        gpName: 'Uno',
        enName: 'one',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/b.jpg',
        gpName: 'dos',
        enName: 'two',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/c.jpeg',
        gpName: 'tres',
        enName: 'three',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/d.jpeg',
        gpName: 'cuatro',
        enName: 'four',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/e.jpg',
        gpName: 'cinco',
        enName: 'five',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/g.jpeg',
        gpName: 'seis',
        enName: 'six',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/n.jpeg',
        gpName: 'Siete',
        enName: 'seven',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/v.jpeg',
        gpName: 'ocho',
        enName: 'eight',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/f.jpg',
        gpName: 'nueve',
        enName: 'nine',
        sound: 'assets/sound/numbers.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Phrasesitem(number: numbers[index], color:Colors.white70);
        },
      ),
    );
  }
}
