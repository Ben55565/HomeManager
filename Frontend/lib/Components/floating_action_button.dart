import 'package:flutter/material.dart';

FloatingActionButton buildFloatingActionButton() {
  return FloatingActionButton(
    onPressed: () {
      debugPrint("Pressed the button");
    },
    backgroundColor: Color(0xFF1ABC9C),
    shape: CircleBorder(),
    child: Icon(Icons.add),
  );
}
