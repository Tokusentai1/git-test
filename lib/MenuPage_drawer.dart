// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50),
        children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage("images/school1.png"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "School Management System",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.home,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/student_loader");
            },
            child: Row(
              children: [
                Icon(
                  Icons.face,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Students",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/teacher-loader");
            },
            child: Row(
              children: [
                Icon(
                  Icons.perm_identity_outlined,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Teachers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/about_screen");
            },
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "About",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/");
            },
            child: Row(
              children: [
                Icon(
                  Icons.logout_outlined,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Log out",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
