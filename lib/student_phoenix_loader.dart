// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StudentPhoenixInfoLoader extends StatefulWidget {
  const StudentPhoenixInfoLoader({super.key});

  @override
  State<StudentPhoenixInfoLoader> createState() =>
      _StudentPhoenixInfoLoaderState();
}

void setUp(context) async {
  await Future.delayed(Duration(milliseconds: 800), () {
    Navigator.of(context).pushReplacementNamed("/student1_info");
  });
}

class _StudentPhoenixInfoLoaderState extends State<StudentPhoenixInfoLoader> {
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
