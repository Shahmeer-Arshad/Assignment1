
void main() {
  List<String> sent = [
    "This is a really really really cool experiment really",
    "Cute little experiment",
    "will it work maybe it will work do you think it will it will",
  ];

  for (int i = 0; i < sent.length; i++) {
    RepeatingWord(sent[i]);
  }
}

void RepeatingWord(String sen) {
  List<String> words = sen.split(" ");
  String repeatedWord = "";
  int wordCount = 0;

  while (words.isNotEmpty) {
    String word = words[0];
    int count = words.where((w) => w == word).length;

    if (count > wordCount) {
      repeatedWord = word;
      wordCount = count;
    }

    words.removeWhere((w) => w == word);
  }

  if (wordCount > 1) {
    print("Word: $repeatedWord \n Count: $wordCount");
  } else {
    print("No repeating words!");
  }
}
