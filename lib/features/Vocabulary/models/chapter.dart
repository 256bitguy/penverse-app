import 'vocab_word.dart';

class Chapter {
  final String id;
  final String title;
  final String story;
  final List<VocabWord> vocabWords;

  Chapter({
    required this.id,
    required this.title,
    required this.story,
    required this.vocabWords,
  });
}
