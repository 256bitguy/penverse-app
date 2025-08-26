import 'chapter.dart';

class Book {
  final String id;
  final String title;
  final List<Chapter> chapters;

  Book({
    required this.id,
    required this.title,
    required this.chapters,
  });
}
