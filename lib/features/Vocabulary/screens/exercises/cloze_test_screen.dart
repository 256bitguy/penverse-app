import 'package:flutter/material.dart';
import 'result_page.dart';

class ClozeTestScreen extends StatefulWidget {
  const ClozeTestScreen({super.key});

  @override
  State<ClozeTestScreen> createState() => _ClozeTestScreenState();
}

class _ClozeTestScreenState extends State<ClozeTestScreen> {
  final _controller = TextEditingController();
  final String correctAnswer = "flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1E23),
        title: const Text("Cloze Test", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Fill in the blank:\n\n_____ is an open-source UI framework.",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: "Enter your answer",
                hintStyle: TextStyle(color: Colors.white38),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white38),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final isCorrect = _controller.text.trim().toLowerCase() == correctAnswer;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ClozeResultScreen(isCorrect: isCorrect),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
