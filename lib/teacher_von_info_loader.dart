// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TeacherVonInfoLoader extends StatefulWidget {
  const TeacherVonInfoLoader({super.key});

  @override
  State<TeacherVonInfoLoader> createState() => _TeacherVonInfoLoaderState();
}

void setUp(context) async {
  await Future.delayed(Duration(milliseconds: 800), () {
    Navigator.of(context).pushReplacementNamed("/teacher2_info");
  });
}

class _TeacherVonInfoLoaderState extends State<TeacherVonInfoLoader> {
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
