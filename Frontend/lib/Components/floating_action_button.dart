import 'package:flutter/material.dart';
import 'package:home_manager/Constants/colors.dart';

FloatingActionButton buildFloatingActionButton() {
  return FloatingActionButton(
    onPressed: () {
      debugPrint("Pressed the button");
    },
    backgroundColor: AppColors.primary,
    shape: CircleBorder(),
    child: Icon(Icons.add),
  );
}
