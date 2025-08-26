class VocabWord {
  final String id;
  final String word;
  final String partOfSpeech;
  final String englishExplanation;
  final String hindiExplanation;
  final String imageUrl;
  final List<String> synonyms;
  final List<String> antonyms;

  VocabWord({
    required this.id,
    required this.word,
    required this.partOfSpeech,
    required this.englishExplanation,
    required this.hindiExplanation,
    required this.imageUrl,
    required this.synonyms,
    required this.antonyms,
  });
}
