void main() {
  sorting();
  print('------------------------------------');
  sortingRev();
  print('------------------------------------');
  StringCompare();
  print('------------------------------------');
  StringSingle();
}

void sorting() {
  List<int> numbers = [5, 2, 8, 1, 9, 3, 4];

  numbers.sort();

  print(numbers); // Prints: [1, 2, 3, 4, 5, 8, 9]
}

void sortingRev() {
  List<int> numbers = [5, 2, 8, 1, 9, 3, 4];

  numbers.sort((a, b) => b.compareTo(a));
  print(numbers); // Prints: [9, 8, 5, 4, 3, 2, 1]
  numbers.sort((a, b) => b.compareTo(4));
  print("compare=== $numbers"); //compare=== [5, 8, 9, 4, 3, 2, 1]
}

void StringCompare() {
  List<String> names = ['John', 'Alice', 'bob', 'David', 'carol'];

  names.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));

  print(names); // Prints: [Alice, bob, Carol, David, John]
}

void StringSingle() {
  String str = 'welcome';

  List<String> characters = str.split('o');
  print(characters);
  characters.sort();

  String sortedStr = characters.join('');

  print(sortedStr); // Prints: ceelmo
}
