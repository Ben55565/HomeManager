import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        appBar: buildAppBar(),
        floatingActionButton: buildFloatingActionButton(),
        body: Placeholder(),
        bottomNavigationBar: buildNavigationBar(),
      ),
    );
  }

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

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        debugPrint("Pressed the button");
      },
      backgroundColor: Color(0xFF1ABC9C),
      child: Icon(Icons.add),
      shape: CircleBorder(),
    );
  }

  NavigationBar buildNavigationBar() {
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
        setState(() {
          currentPage = index;
        });
      },
      selectedIndex: currentPage,
    );
  }

}
