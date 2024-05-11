import 'dart:io';

void main() {
  int n = 10; // Number of Fibonacci numbers to generate
  generateFibonacciSeries(n);
  print('----------------------------------------:');
  /// recursion
  for (int i = 0; i < n; i++) {

    stdout.write("${fibonacci(i)} ");
  }
}

/// Fibonacci= sum of previous two
void generateFibonacciSeries(int n) {
  int first = 0;
  int second = 1;
  print('Fibonacci Series without recursion:');
  for (int i = 0; i < n; i++) {
    stdout.write("$first ");
    int next = first + second;
    first = second;
    second = next;
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
