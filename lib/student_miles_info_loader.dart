// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StudentMilesInfoLoader extends StatefulWidget {
  const StudentMilesInfoLoader({super.key});

  @override
  State<StudentMilesInfoLoader> createState() => _StudentMilesInfoLoaderState();
}

void setUp(context) async {
  await Future.delayed(Duration(milliseconds: 800), () {
    Navigator.of(context).pushReplacementNamed("/student2_info");
  });
}

class _StudentMilesInfoLoaderState extends State<StudentMilesInfoLoader> {
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
