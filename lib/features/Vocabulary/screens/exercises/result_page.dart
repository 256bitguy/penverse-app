import 'package:flutter/material.dart';

class ClozeResultScreen extends StatelessWidget {
  final bool isCorrect;

  const ClozeResultScreen({super.key, required this.isCorrect});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1E23),
        title: const Text("Result", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          isCorrect ? "✅ Correct!" : "❌ Wrong Answer",
          style: TextStyle(
            color: isCorrect ? Colors.greenAccent : Colors.redAccent,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
