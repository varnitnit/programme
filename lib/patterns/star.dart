import 'dart:io';

void main() {
  starWithSingle();
  print('1------------------------');
  star();
  print('2------------------------');
  starStart();
  print('3------------------------');
  cross();
  print('4------------------------');
  hollow();
  print('5------------------------');
  leftRight();
  print('6------------------------');
  rightTriangle();
}

star() {
  int n = 4;
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

starStart() {
  int n = 5;
  for (int i = 1; i <= n; i++) {
    for (int j = n; j > i; j--) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

starWithSingle() {
  int n = 5;
  String sum = "";
  for (int i = 1; i <= n; i++) {
    sum = "$sum*";
    stdout.writeln(sum);
  }
}

cross() {
  int n = 7;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      if (i == j) {
        stdout.write("*  ");
      } else if ((i + j) == (n + 1) && i != j) {
        stdout.write("*  ");
      } else {
        stdout.write("   ");
      }
    }
    stdout.writeln();
  }
}

hollow() {
  int n = 5;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      if (i > 1 && j > 1 && i < n && j < n) {
        stdout.write("   ");
      } else {
        stdout.write("*  ");
      }
    }
    stdout.writeln();
  }
}

leftRight() {
  int n = 5;
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$i ");
    }
    stdout.writeln();
  }

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    stdout.writeln();
  }

/*  for (String i = 'A'; i <= 'E'; i++) {
    for (var j ='A'; j <= i; j++) {
      stdout.write(i+" ");
    }
    stdout.writeln();
  }
  String s="";
  for (var i = 1; i <= n; i++) {

    s=s+"* ";
    stdout.write(s);
  }*/
}

void rightTriangle() {
  int n = 4;
  for (int i = 1; i <= n; i++) {
    for (int j = n; j > i; j--) {
      stdout.write("0 ");
    }

    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }

  for (int i = n - 1; i >= 1; i--) {
    for (int j = n; j > i; j--) {
      stdout.write("0 ");
    }

    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}
