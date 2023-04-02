import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'counter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("My App"),
        backgroundColor: Colors.teal,
        // shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 65,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 65,
                  height: 100,
                  color: Colors.teal,
                ),
                Container(
                  width: 65,
                  height: 100,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: 65,
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  width: 65,
                  height: 100,
                  color: Colors.cyan,
                ),
                Container(
                  width: 65,
                  height: 100,
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 100),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Counter();
                }));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Counter"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              gap: 8,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(255, 47, 85, 104),
              padding: EdgeInsets.all(12),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: "Favorite",
                ),
                GButton(
                  icon: Icons.search,
                  text: "Search",
                ),
                GButton(
                  icon: Icons.settings,
                  text: "Settings",
                ),
              ]),
        ),
      ),
    );
  }
}
