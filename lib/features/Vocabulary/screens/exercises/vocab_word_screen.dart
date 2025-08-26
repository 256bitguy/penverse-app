import 'package:flutter/material.dart';
import '../../models/vocab_word.dart';

class VocabWordDetailScreen extends StatelessWidget {
  final VocabWord vocabWord;

  const VocabWordDetailScreen({super.key, required this.vocabWord});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1E23),
        title: Text(
          vocabWord.word,
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                vocabWord.imageUrl!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            // Word
            Text(
              vocabWord.word,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Part of speech
            Text(
              vocabWord.partOfSpeech,
              style: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),

            // English explanation
            const Text(
              "English Explanation",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              vocabWord.englishExplanation,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 16),

            // Hindi explanation
            const Text(
              "Hindi Explanation",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              vocabWord.hindiExplanation,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 24),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      _showWordListDialog(
                        context,
                        "Synonyms",
                        vocabWord.synonyms,
                      );
                    },
                    child: const Text("Synonyms"),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      _showWordListDialog(
                        context,
                        "Antonyms",
                        vocabWord.antonyms,
                      );
                    },
                    child: const Text("Antonyms"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showWordListDialog(
      BuildContext context, String title, List<String> words) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF2A2F36),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: words
              .map(
                (word) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    word,
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ),
              )
              .toList(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close", style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
