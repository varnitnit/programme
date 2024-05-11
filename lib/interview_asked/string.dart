void main() {
  String name = "joHn is based";
  String capitalized = capitalizeFirstLetter(name);
  print(capitalized); 
  ///

  String capitalized1 = capitalizeWords(name);
  print(capitalized1);
}

String capitalizeFirstLetter(String text) {
  if (text == null || text.isEmpty) {
    return text;
  }
  return text[0].toUpperCase() + text.substring(1);
}



String capitalizeWords(String text) {
  List<String> words = text.toLowerCase().split('');
  print("words== $words");
  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      words[i] = words[i][0].toUpperCase() + words[i].substring(1);
    }
  }
  return words.join(' ');
}
