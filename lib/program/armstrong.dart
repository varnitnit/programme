/*void main() {
  // Check and print Armstrong numbers in a range
  int lowerLimit = 100;
  int upperLimit = 1000;

  print("Armstrong numbers between $lowerLimit and $upperLimit:");
  for (int i = lowerLimit; i < upperLimit; i++) {
    if (isArmstrong(i)) {
      print(i);
    }
  }
}

// Function to determine if a number is an Armstrong number
bool isArmstrong(int number) {
  List<int> digits = number.toString().split('').map(int.parse).toList();
  int numDigits = digits.length;
  int sum = digits.fold(0, (previous, digit) => previous + pow(digit, numDigits));
  return sum == number;
}*/


