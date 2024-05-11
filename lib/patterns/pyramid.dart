import 'dart:io';

void main() {
  StarLeftTriangle();
   StarTriangle();
}

void StarLeftTriangle() {
  int i, j, k;
  int n = 5;

  // 1st loop
  for (i = 1; i <= n; i++) {
    // nested 2nd loop
    for (j = 1; j <= n - i; j++) {
      // printing spaces
      stdout.write("  ");
    }

    // nested 3rd loop
    for (k = 1; k <= i; k++) {
      // printing stars
      stdout.write("* ");
    }

    // end-line
    stdout.writeln();
  }
}

void StarTriangle() {
  int i, j, k;
  int n = 5;

  // 1st loop
  for (i = 1; i <= n; i++) {
    // nested 2nd loop
    for (j = 1; j <= n - i; j++) {
      // printing spaces
      stdout.write("");
    }
    // nested 3rd loop
    for (k = 1; k <= i; k++) {
      // printing stars
      stdout.write("* ");
    }
    // end-line
    stdout.writeln();
  }
}
