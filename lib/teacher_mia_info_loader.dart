// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TeacherMiaInfoLoader extends StatefulWidget {
  const TeacherMiaInfoLoader({super.key});

  @override
  State<TeacherMiaInfoLoader> createState() => _TeacherMiaInfoLoaderState();
}

void setUp(context) async {
  await Future.delayed(Duration(milliseconds: 800), () {
    Navigator.of(context).pushReplacementNamed("/teacher1_info");
  });
}

class _TeacherMiaInfoLoaderState extends State<TeacherMiaInfoLoader> {
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
