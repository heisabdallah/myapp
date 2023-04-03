import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          title: const Text(
            "Add Todo",
          ),
          toolbarHeight: 40,
          // backgroundColor: Color.fromARGB(255, 67, 38, 117),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const TextField(
              decoration: InputDecoration(hintText: "Title"),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Description"),
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 8,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Submit"))
          ],
        ));
  }
}
