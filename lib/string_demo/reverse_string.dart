import 'dart:io';

void main() {
  String name = "welcome home";
  String rev = "";
  var splitName = name.split('');
  print("splitName==$splitName");
  var revName = splitName.reversed.join();
  stdout.writeln(revName);

  for (int i = name.length - 1; i >= 0; i--) {
    stdout.write(name[i]);
  }
  stdout.writeln();
  print('recursion ------------------------');
  print('${reverseRecursion(name, rev, name.length - 1)}');
}

/// using recursion
String reverseRecursion(String str, String rev, int i) {
  if (i < 0) {
    return rev;
  }
  return reverseRecursion(str, rev + str[i], i - 1);
}
