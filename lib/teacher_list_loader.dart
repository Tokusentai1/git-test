// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TeacherListLoader extends StatefulWidget {
  const TeacherListLoader({super.key});

  @override
  State<TeacherListLoader> createState() => _TeacherListLoader();
}

void setUp(context) async {
  await Future.delayed(Duration(milliseconds: 800), () {
    Navigator.of(context).pushReplacementNamed("/teachers-list");
  });
}

class _TeacherListLoader extends State<TeacherListLoader> {
  @override
  void initState() {
    super.initState();
    setUp(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: SpinKitCircle(
        color: Colors.pink,
        size: 50,
      )),
    );
  }
}
