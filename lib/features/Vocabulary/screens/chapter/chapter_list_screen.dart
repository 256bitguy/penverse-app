import 'package:flutter/material.dart';
import '../../models/chapter.dart';
import '../../widgets/chapter_card.dart';
import '../exercises/story_screens.dart';
import '../exercises/cloze_test_screen.dart';
import '../exercises/practise_screen.dart';

class ChapterListScreen extends StatelessWidget {
  final Chapter chapter;

  const ChapterListScreen({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1E23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1E23),
        title: Text(
          chapter.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ChapterCard(
          chapter: chapter,
          onStoryTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => StoryScreen(story: chapter.story),
              ),
            );
          },
          onVocabTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => VocabWordScreen(vocabWords: chapter.vocabWords),
              ),
            );
          },
          onClozeTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ClozeTestScreen(),
              ),
            );
          },
          onPractiseTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const PractiseScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
