

import 'dart:io';

void main() {
  String example = 'Eawww22222ddd';
  if (containsVowel(example)) {
    print('The string "$example" contains a vowel.');
  } else {
    print('The string "$example" does not contain a vowel.');
  }
}
bool containsVowel(String input) {
  final vowels = ['a', 'e', 'i', 'o', 'u'];
  for (var i = 0; i < input.length; i++) {
   // stdout.writeln(input.toLowerCase().contains('e'));
    if (vowels.contains(input[i].toLowerCase())) {
      print("vowels==${input[i]}");
      return true;
    }
  }
  return false;
}