import 'package:flutter/material.dart';

// ignore: must_be_immutable
class buton extends StatelessWidget {
  buton({required this.titel});
  String? titel;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue.shade300),
        child: Center(
          child: Text(
            "$titel",
            style: TextStyle(
              color: Color(0xffFFFFFF),
            ),
          ),
        ));
  }
}
