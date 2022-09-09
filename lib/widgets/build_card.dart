// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final String text2;

  const BuildCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      color: Colors.pink,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 18.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
