import 'package:flutter/material.dart';
import '../models/vocab_word.dart';

class VocabWordCard extends StatelessWidget {
  final VocabWord vocabWord;
  final VoidCallback onSynonymsTap;
  final VoidCallback onAntonymsTap;

  const VocabWordCard({
    super.key,
    required this.vocabWord,
    required this.onSynonymsTap,
    required this.onAntonymsTap,
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
          // Image
          if (vocabWord.imageUrl.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                vocabWord.imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(height: 12),

          // Word + Part of Speech
          Text(
            "${vocabWord.word} (${vocabWord.partOfSpeech})",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),

          // English Explanation
          Text(
            vocabWord.englishExplanation,
            style: const TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 4),

          // Hindi Explanation
          Text(
            vocabWord.hindiExplanation,
            style: const TextStyle(color: Colors.orangeAccent),
          ),
          const SizedBox(height: 12),

          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: onSynonymsTap,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.greenAccent,
                  side: const BorderSide(color: Colors.greenAccent),
                ),
                child: const Text("Synonyms"),
              ),
              OutlinedButton(
                onPressed: onAntonymsTap,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.redAccent,
                  side: const BorderSide(color: Colors.redAccent),
                ),
                child: const Text("Antonyms"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
