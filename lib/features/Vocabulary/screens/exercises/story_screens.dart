import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  final String story;

  const StoryScreen({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1E23),
        title: const Text("Story", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          story,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
