// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';

import 'widgets/build_card.dart';

class StudentInfoScreen extends StatelessWidget {
  const StudentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Student info"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 80,
                    child: ClipRRect(
                      child: Image.asset("images/student2.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Phoenix Wright",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          BuildCard(
              icon: Icons.email,
              text: "E-mail :",
              text2: "Phoenix_W@gmail.com"),
          SizedBox(
            height: 40,
          ),
          BuildCard(icon: Icons.school, text: "Class :", text2: "A-1"),
          SizedBox(
            height: 40,
          ),
          BuildCard(icon: FontAwesome.birthday, text: "Age :", text2: "21"),
          SizedBox(
            height: 40,
          ),
          BuildCard(icon: MfgLabs.male, text: "Gender :", text2: "Male"),
        ],
      ),
    );
  }
}
