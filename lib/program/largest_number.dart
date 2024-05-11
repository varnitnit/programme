

void main() {
  int number1 = 10;
  int number2 = 25;
  int number3 = 15;
  int number4 = 30;

  int largestNumber = findLargest(number1, number2, number3, number4);
  print('The largest number is: $largestNumber');
}

int findLargest(int num1, int num2, int num3, int num4) {
  int largest = (num1 > num2) ? num1 : num2;
  largest = (num3 > largest) ? num3 : largest;
  largest = (num4 > largest) ? num4 : largest;
  return largest;
}

