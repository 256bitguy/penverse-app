import 'package:flutter/material.dart';
import '../../data/sample_books.dart';
import '../../widgets/book_card.dart';
import '../book/book_detail_screen.dart';

class VocabScreen extends StatelessWidget {
  const VocabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final books = sampleBooks; // from sample_books.dart

    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
     
      body: ListView.builder(
        itemCount: books.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return BookCard(
            book: books[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BookDetailScreen(book: books[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
