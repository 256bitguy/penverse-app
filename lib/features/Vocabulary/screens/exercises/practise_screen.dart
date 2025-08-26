import 'package:flutter/material.dart';

class PractiseScreen extends StatelessWidget {
  const PractiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1E23),
        title: const Text("Practise", style: TextStyle(color: Colors.white)),
      ),
      body: const Center(
        child: Text(
          "Practise exercises will go here.",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
