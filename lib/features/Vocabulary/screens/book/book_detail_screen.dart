import 'package:flutter/material.dart';
import '../../models/book.dart';
 import "../exercises/vocab_word_screen.dart";

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3F3F7D),
      appBar: AppBar(
        
        backgroundColor: const Color(0xFF3F3F7D),
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
              color: const Color(0xFF0D0D25),
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
                          color: Color.fromARGB(255, 228, 221, 221),
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
                          backgroundColor: const Color(0xFF5E5EBC),
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
                          backgroundColor: const Color(0xFF1F1F5D),
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
