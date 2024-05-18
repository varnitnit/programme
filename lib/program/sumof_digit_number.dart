void main() {
  int number = 12345;
  int N = 345;
  int sum = sumOfDigitsRec(number);
  print("The sum of digits of $number is $sum"); // Output: The sum of digits of 12345 is 15


  int result = 0;
  for (int i = N; i > 0; i = (i / 10).floor()) {
    result += (i % 10);
  }

  print('Sum of digits\n$result');
  print('fffffffffff ${(15/2).floor()}');
  print('fffffffffff ${(15/2)}');
  print('~~~~~~~~~~~~    ${15~/2}');
}
int sumOfDigitsRec(int number) {
  if (number < 10) {
    return number; // If the number is a single digit, return it as the sum.
  } else {
    int lastDigit = number % 10; // Get the last digit of the number.
    int remainingDigits = number ~/ 10; // Remove the last digit from the number.
    return lastDigit + sumOfDigitsRec(remainingDigits); // Recursive call with the remaining digits.
  }
}
