
import 'dart:io';
main()
{
  //WA Program to Swap Numbers Using Temporary Variable
/*  var num1,num2,temp;
  stdout.write("Enter first Number: ");
  num1=int.parse(stdin.readLineSync()!);
  stdout.write("Enter Second Number: ");
  num2=int.parse(stdin.readLineSync()!);

  temp=num1;
  num1=num2;
  num2=temp;

  print("After Swaping first number is $num1");
  print("After Swaping second number is $num2");*/
  print("==========================================");

  int a=5;
  int b=51;
  a=a+b;
  b=a-b;
  a=a-b;
  print("After Swaping first number is $a");
  print("After Swaping second number is $b");
}