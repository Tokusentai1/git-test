// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kuroi_app/about_screen.dart';
import 'package:kuroi_app/student_miles_info_loader.dart';
import 'package:kuroi_app/student_phoenix_loader.dart';
import 'package:kuroi_app/teacher_list_loader.dart';
import 'package:kuroi_app/teacher_mia_info_loader.dart';
import 'package:kuroi_app/teacher_von_info_loader.dart';
import 'loader_after_login.dart';
import 'login_screen.dart';
import 'student_miles_info_screen.dart';
import 'student_phoenix_info_screen.dart';
import 'students_list_loader.dart';
import 'teacher_list_screen.dart';
import 'home_screen.dart';
import 'student_list_screen.dart';
import 'teacher_mia_info_screen.dart';
import 'teacher_von_info_screen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/login_loader": (context) => LoginLoader(),
        '/home': (context) => MainScreen(),
        '/student_loader': (context) => StudentListLoader(),
        '/students-list': (context) => StudentScreen(),
        '/teacher-loader': (context) => TeacherListLoader(),
        '/teachers-list': (context) => TeacherScreen(),
        '/student1-loader': (context) => StudentPhoenixInfoLoader(),
        '/student1_info': (context) => StudentInfoScreen(),
        '/student2_loader': (context) => StudentMilesInfoLoader(),
        '/student2_info': (context) => StudentInfoScreen2(),
        '/teacher1_loader': (context) => TeacherMiaInfoLoader(),
        '/teacher1_info': (context) => TeacherInfoScreen(),
        '/teacher2_loader': (context) => TeacherVonInfoLoader(),
        '/teacher2_info': (context) => TeacherInfoScreen2(),
        '/about_screen': (context) => AboutScreen(),
      },
    ),
  );
}
