void main() {
  int number = 2;
  if (isPrime(number)) {
    print('$number is prime.');
  } else {
    print('$number is not prime.');
  }

  /// for range of prime
  for (int number = 3; number <= 100; number++) {
    if (isPrime(number)) {
      print('$number is prime.');
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= (number / 2); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
