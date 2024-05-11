void main() {
  int number = 5;
  int result = factorial(number);
  print('The factorial recursion of $number is $result.');
  print('------------------------------------------');
  //int result2 = factorialWithout(number);
  //print('The factorial of $number is $result2.');
}
int factorial(int number) {
  if (number == 0||number==1) {
    return 1;
  } else {
    print("====${number}");
    return number * factorial(number - 1);
  }
}
int factorialWithout(int number) {
  int result = 1;

  for (int i = 2; i <= number; i++) {
    result *= i;
  }

  return result;
}

