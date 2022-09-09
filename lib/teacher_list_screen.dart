// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Teachers List"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/teacher1_loader");
            },
            child: Card(
              shadowColor: Colors.pink,
              elevation: 1.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("Mia Fey"),
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Image(
                    image: AssetImage("images/teacher5.png"),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/teacher2_loader");
            },
            child: Card(
              shadowColor: Colors.pink[400],
              elevation: 1.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("Von Karma"),
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Image(
                    image: AssetImage("images/teacher4.png"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
