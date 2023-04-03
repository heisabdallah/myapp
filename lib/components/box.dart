import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({super.key, required this.child});

  final String child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 500,
        color: Color.fromRGBO(44, 199, 142, 1),
        child: Center(
            child: Text(
          child,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
