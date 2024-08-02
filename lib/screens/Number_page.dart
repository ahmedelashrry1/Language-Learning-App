// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:touke/category/item.dart';
import 'package:touke/models/number.dart';

class Numberpage extends StatelessWidget {
  final List<Number> numbers = [
    Number(
        image: 'assets/images/1.jpeg',
        gpName: 'Uno',
        enName: 'one',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/2.jpeg',
        gpName: 'dos',
        enName: 'two',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/3.jpeg',
        gpName: 'tres',
        enName: 'three',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/4.jpeg',
        gpName: 'cuatro',
        enName: 'four',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/5.jpeg',
        gpName: 'cinco',
        enName: 'five',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/6.jpeg',
        gpName: 'seis',
        enName: 'six',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/7.jpeg',
        gpName: 'Siete',
        enName: 'seven',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/8.jpeg',
        gpName: 'ocho',
        enName: 'eight',
        sound: 'assets/sound/numbers.mp3'),
    Number(
        image: 'assets/images/9.jpeg',
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
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: numbers
            .map((number) =>
                item(number: number, color: Color.fromARGB(255, 240, 202, 188)))
            .toList(),
      ),
    );
  }
}
//  List<Widget> getlist(List<Number> numbers) {
//     List<Widget> itemlist = [];
//     for (int i = 0; i < numbers.length; i++) {
//       itemlist.add(item(number: numbers[i]));
//     }
//     return itemlist;

