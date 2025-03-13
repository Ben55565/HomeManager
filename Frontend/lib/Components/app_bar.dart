import 'package:flutter/material.dart';
import 'package:home_manager/Constants/colors.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Center(
      child: Text(
        "Home Manager",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
          fontSize: 18,
        ),
      ),
    ),
    backgroundColor: AppColors.primary,
    elevation: 0,
  );
}
