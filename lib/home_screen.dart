// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'MenuPage_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Screen"),
        backgroundColor: Color.fromARGB(255, 236, 87, 136),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              // if you want to add stuff above the below containers :)
              Container(
                color: Colors.black,
                child: Text("data"),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/student_loader");
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.white,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(13),
              ),
              width: 100,
              height: 100,
              child: InkWell(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                        "images/student.png",
                      ),
                    ),
                    Text("Students"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/teacher-loader");
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.white,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(13),
              ),
              width: 100,
              height: 100,
              child: InkWell(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                        "images/teacher2.png",
                      ),
                    ),
                    Text("Teachers"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.white,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(13),
            ),
            width: 100,
            height: 100,
            child: InkWell(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(
                      "images/assignment.png",
                    ),
                  ),
                  Text("Assignments"),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.pinkAccent,
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset("images/school1.png"),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
            ),
            Text(
              "School Management System",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            BuildListTile(context, Icons.home, "home", "/home"),
            Padding(
              padding: EdgeInsets.all(6.0),
            ),
            BuildListTile(context, Icons.face, "Students", "/student_loader"),
            Padding(
              padding: EdgeInsets.all(6.0),
            ),
            BuildListTile(context, Icons.perm_identity_outlined, "Teachers",
                "/teacher-loader"),
            Padding(
              padding: EdgeInsets.all(6.0),
            ),
            BuildListTile(
                context, Icons.info_outline, 'About', "/about_screen"),
            Padding(
              padding: EdgeInsets.all(6.0),
            ),
            BuildListTile(context, Icons.logout_outlined, "Log out", "/"),
            Padding(
              padding: EdgeInsets.all(6.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget BuildListTile(
      BuildContext context, IconData icon, String title, String route) {
    return ListTile(
        leading: Icon(
          icon,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(route);
        });
  }
}
