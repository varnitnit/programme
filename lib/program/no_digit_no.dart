void main() {
  int number = 12345; // Change this value to count digits in a different number
  int digitCountRec = countDigitsRec(number);
  int digitCount = countDigits(number);
  print("The number of digits in Recursion $number is $digitCountRec");
  print("The number of digits in $number is $digitCount");
}

int countDigitsRec(int number) {
  if (number < 10) {
    return 1;
  } else {
    // Recursive case: call the function with number / 10 (to remove the last digit)
    // and add 1 to the result (to count the current digit)
    print("number===========$number");

    var x=1 + countDigits(number ~/ 10);
    print("x===========$x");

    return x;
  }
}

int countDigits(int number) {
  int digitCount = 0;
  while (number != 0) {
    print(number);
    number ~/= 10;

    digitCount++;
  }
  return digitCount;
}
