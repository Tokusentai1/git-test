// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Students list"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/student1-loader");
            },
            child: Card(
              shadowColor: Colors.pink,
              elevation: 1.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("Phoenix Wright"),
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Image(
                    image: AssetImage("images/student2.png"),
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
              Navigator.of(context).pushNamed("/student2_loader");
            },
            child: Card(
              shadowColor: Colors.pink[400],
              elevation: 1.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("Miles Edgeworth"),
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Image(
                    image: AssetImage("images/student3.png"),
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
