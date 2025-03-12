import 'package:flutter/material.dart';

NavigationBar buildNavigationBar(int currentPage, Function(int) onPageChanged) {
  return NavigationBar(
    backgroundColor: Color(0xFF1ABC9C),
    height: 80,
    destinations: const [
      NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
      NavigationDestination(
        icon: Icon(Icons.calendar_month),
        label: "Calendar",
      ),
      NavigationDestination(icon: Icon(Icons.task_alt), label: "Tasks"),
    ],
    onDestinationSelected: (int index) {
      onPageChanged(index);
    },
    selectedIndex: currentPage,
  );
}
