import 'package:flutter/material.dart';
import '../models/chapter.dart';

class ChapterCard extends StatelessWidget {
  final Chapter chapter;
  final VoidCallback onStoryTap;
  final VoidCallback onVocabTap;
  final VoidCallback onClozeTap;
  final VoidCallback onPractiseTap;

  const ChapterCard({
    super.key,
    required this.chapter,
    required this.onStoryTap,
    required this.onVocabTap,
    required this.onClozeTap,
    required this.onPractiseTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2F36),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            chapter.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildButton("Story", onStoryTap),
              _buildButton("Vocab", onVocabTap),
              _buildButton("Cloze", onClozeTap),
              _buildButton("Practise", onPractiseTap),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onTap) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF3C4047),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: Text(text),
    );
  }
}
