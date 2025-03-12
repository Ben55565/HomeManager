import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Center(
      child: Text(
        "Home Manager",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ),
    backgroundColor: Color(0xFF1ABC9C),
    elevation: 0,
  );
}
