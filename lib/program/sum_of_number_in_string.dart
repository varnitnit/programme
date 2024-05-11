void main() {
  // Input alphanumeric string
  String str = "2abc20yz6";

  // Function call
  print(findSum(str));
}

int findSum(String str) {
  // A temporary string
  String temp = "0";

  // Holds the sum of all numbers present in the string
  int sum = 0;

  // Read each character in the input string
  for (int i = 0; i < str.length; i++) {
    String ch = str[i];

    // If the current character is a digit
    if (isDigit(ch)) {
      temp += ch;
    }

    // If the current character is an alphabet
    else {
      // Increment the sum by the number found earlier (if any)
      sum += int.parse(temp);

      // Reset the temporary string to empty
      temp = "0";
    }
  }

  // int.parse(temp) takes care of trailing numbers
  return sum + int.parse(temp);
}

bool isDigit(String ch) {
  return RegExp(r'^[0-9]+$').hasMatch(ch);
}
