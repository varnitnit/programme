import 'dart:io';

void main() {
  int n = 5;
  for (int i = 1; i <= n; i++) {
    stdout.write("$i" + " ");
  }
  print("recursion==");
  printN(n);
  print("recursion reverse");
  printNReverse(n);
}

void printN(int n) {
  if (n == 0) {
    return;
  } else {
    printN(n - 1);
    print(n);
  }
}

void printNReverse(int n) {
  if (n == 0) {
    return;
  } else {
    print(n);
    printNReverse(n - 1);
  }
}
