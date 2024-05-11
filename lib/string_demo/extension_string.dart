import 'dart:io';

import 'package:flutter/material.dart';
void main(){
  fourTimes(3);
  reverse("varnit");
}
void userInput(){
  debugPrint("x==enter}");
  String? name=stdin.readLineSync()!;
  debugPrint("name==$name}");
}
void fourTimes(int x){
  debugPrint("x== ${x.timesFour}");
}

void reverse(String x){
  debugPrint("x== ${x.reversed}");
}



extension on int{
  int get timesFour=>this*4;
}
extension on String{
  String get reversed=>split('').reversed.join();
}