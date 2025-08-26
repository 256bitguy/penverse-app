import '../models/book.dart';
import '../models/chapter.dart';
import '../models/vocab_word.dart';

final sampleBooks = [
  Book(
    id: "b1",
    title: "Black Book",
    chapters: [
      Chapter(
        id: "c1",
        title: " The Beginning",
        story:
            "Once upon a time in a small village, there was a young boy who loved to read books...",
        vocabWords: [
          VocabWord(
            id: "v1",
            word: "Curiosity",
            partOfSpeech: "Noun",
            englishExplanation: "A strong desire to know or learn something.",
            hindiExplanation: "जिज्ञासा (Jigyasa)",
            imageUrl:
                "http://res.cloudinary.com/dqzl1mp8z/image/upload/v1750711865/vktuxevbeim2lpuhrwto.png",
            synonyms: ["Inquisitiveness", "Interest", "Eagerness"],
            antonyms: ["Apathy", "Disinterest"],
          ),
          VocabWord(
            id: "v2",
            word: "Brave",
            partOfSpeech: "Adjective",
            englishExplanation:
                "Ready to face danger or pain; showing courage.",
            hindiExplanation: "बहादुर (Bahadur)",
            imageUrl:
                "http://res.cloudinary.com/dqzl1mp8z/image/upload/v1750711865/vktuxevbeim2lpuhrwto.png",
            synonyms: ["Courageous", "Fearless"],
            antonyms: ["Cowardly", "Fearful"],
          ),
        ],
      ),
      Chapter(
        id: "c2",
        title: "  The Adventure",
        story:
            "The boy decided to travel to the forest, where he discovered magical creatures...",
        vocabWords: [
          VocabWord(
            id: "v3",
            word: "Adventure",
            partOfSpeech: "Noun",
            englishExplanation: "An unusual, exciting, or daring experience.",
            hindiExplanation: "साहसिक कार्य (Sahasik Karya)",
            imageUrl:
                "https://cdn.pixabay.com/photo/2015/11/19/21/11/adventure-1059515_960_720.jpg",
            synonyms: ["Quest", "Journey", "Exploration"],
            antonyms: ["Routine", "Monotony"],
          ),
        ],
      ),
    ],
  ),
  Book(
    id: "b2",
    title: "Red Book",
    chapters: [
      Chapter(
        id: "c3",
        title: "Chapter 1: Mystery in the City",
        story:
            "In the busy streets of the city, a strange event caught everyone's attention...",
        vocabWords: [
          VocabWord(
            id: "v4",
            word: "Mystery",
            partOfSpeech: "Noun",
            englishExplanation:
                "Something that is difficult to understand or explain.",
            hindiExplanation: "रहस्य (Rahasya)",
            imageUrl:
                "https://cdn.pixabay.com/photo/2014/09/28/20/43/detective-465237_960_720.jpg",
            synonyms: ["Puzzle", "Enigma", "Riddle"],
            antonyms: ["Clarity", "Obviousness"],
          ),
        ],
      ),
    ],
  ),
];
