import 'package:flutter/material.dart';
import '../../models/book.dart';
 import "../exercises/vocab_word_screen.dart";

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
      appBar: AppBar(
        
        backgroundColor: const Color(0xFF1B1E23),
        title: Text(
          book.title,
          style: const TextStyle(color: Colors.white, fontSize: 22,),
        ),
      ),
      body: ListView.builder(
        itemCount: book.chapters.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final chapter = book.chapters[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFF2A2F36),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // Left side (half column)
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        chapter.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Total: ${chapter.vocabWords.length} words",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 14),

                // Right side (2 rows)
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size.fromHeight(70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => VocabWordDetailScreen(vocabWord: chapter.vocabWords[0]),
                            ),
                          );
                        },
                        child: const Text("VOCAB"),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size.fromHeight(70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          // TODO: navigate to Practise screen
                        },
                        child: const Text("PRACTISE"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
