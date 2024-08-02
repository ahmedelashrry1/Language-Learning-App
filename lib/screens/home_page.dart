// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:touke/category/categoryscreen.dart';
import 'package:touke/screens/FamilyMembers.dart';
import 'package:touke/screens/Number_page.dart';
import 'package:touke/screens/phases.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8EDE3),
      appBar: AppBar(
        backgroundColor: Color(0xFFD0B8A8),
        title: Text(
          "Toku",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Category_home(
            text: "Numbers",
            color: Color(0xFFFFF7F3), // تعديل لون الخلفية
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context){
                  return Numberpage(); 
                }),
              );
            },
          ),
          Category_home(
            text: "Family Members",
            color: Color(0xFF6E9E), 
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context){
                  return FamilyMembers (); 
                }),
              );
            },
          ),
          Category_home(
            text: "Colors",
            color: Color(0xFF0C4E9), 
            onTap: () {
              
            },
          ),
          Category_home(
            text: "Phrases",
            color: Color(0xFF04CC3), 
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context){
                  return Phrases (); 
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
