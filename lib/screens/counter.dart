import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  List<int> things = [1, 2, 3, 5];
  int count = 0;
  String limit = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        title: const Text(
          "Counter",
        ),
        toolbarHeight: 40,
        // backgroundColor: Color.fromARGB(255, 67, 38, 117),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Column(children: [
            Text(
              "$count",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              limit,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                  limit = "";
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: const Text("Reset Count"),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {
            if (count > 10) {
              setState(() {
                limit = "Limit reached";
                count = 10;
              });
            }
          });
        },
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
