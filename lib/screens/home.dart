import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_app/screens/todo.dart';
import 'counter.dart';
import 'feed.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [
    const Feed(),
    const Todo(),
    const Counter(),
    const Center(
      child: Text(
        "SETTINGS",
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: GNav(
            selectedIndex: currentIndex,
            onTabChange: (index) => {setState(() => currentIndex = index)},
            gap: 6,
            backgroundColor: Colors.black,
            // color: Colors.white,
            // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.schedule,
                text: "Todo",
              ),
              GButton(
                icon: Icons.calculate,
                text: "Counter",
              ),
              GButton(
                icon: Icons.settings,
                // text: "Settings",
              ),
            ]));
  }
}
