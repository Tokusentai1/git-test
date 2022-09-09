// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage("images/background.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 125, 0, 0),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    "images/school-modified.png",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "School Management System",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text("E-mail"),
              hintText: "Enter your E-mail",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: "Enter your Password",
              prefixIcon: Icon(
                Icons.password_rounded,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton.extended(
            label: Text('Log in'),
            backgroundColor: Colors.pink,
            icon: Icon(
              Icons.login,
              size: 24.0,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/login_loader");
            },
          ),
          SizedBox(
            height: 12,
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Don't have an account ? ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "Register",
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
