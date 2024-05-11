import 'dart:io';

void main() {
  //palindromeCheck();

  int reminder, sum = 0, temp;
  int number = 12345;
  temp = number;
  // a loop to reverse a number
  while (number > 0) {
    reminder = number % 10; //get remainder
    sum = (sum * 10) + reminder;
    number = number ~/ 10;
    print(sum);
  }

  if (sum == temp) {
    print('Its A Palindrome number');
  } else {
    print('Its A Not Palindrome number');
  }

}

/// another
void palindromeCheck(){
  print('Enter Words or number');
  // User enter a string or a number
  String? original =  stdin.readLineSync();
  // then we will reverse the input
  String? reverse = original!.split('').reversed.join('');

  // then we will compare
  if(original == reverse)
  {
    print('Its A Palindrome');

  }else{
    print('Its A Not Palindrome');
  }

}