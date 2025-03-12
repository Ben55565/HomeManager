import 'package:flutter/material.dart';
import 'package:home_manager/Components/floating_action_button.dart';
import 'package:home_manager/Components/navigation_bar.dart';
import 'package:home_manager/Pages/home_page.dart';

import 'Components/app_bar.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentPage = 0;

  void updatePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        appBar: buildAppBar(),
        floatingActionButton: buildFloatingActionButton(),
        body: HomePage(),
        bottomNavigationBar: buildNavigationBar(currentPage, updatePage),
      ),
    );
  }
}
