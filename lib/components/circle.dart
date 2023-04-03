import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({super.key, required this.child});

  final String child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Center(
            child: Text(
          child,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        )),
      ),
    );
  }
}
