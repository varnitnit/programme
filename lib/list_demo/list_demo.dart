import 'dart:io';

void main(){
  List<int> intList=List.filled(5, 1, growable: true);
  List<int> stringList=[];

  stdout.write(intList.map((e) => e*2));
  intList.add(4);
  stdout.write(intList.map((e) => e*2));
  intList[5]=9;
  stdout.write(intList.map((e) => e*2));
  stdout.writeln('-----------------------------------------');
  var names=["foo","lola","john"];
  if(names.contains('foo')){
    stdout.writeln("yes");
  }
  stdout.writeln('----------------------==-------------------');
/// where

  for(final name in names.where((element) => element.startsWith('j'))){
    stdout.writeln(name);
  }
 var res= names.where((element) => element.startsWith('z'));
  print(res);
/// map
  names.map((e) => e.length).forEach(print);
  print('fold-----------------------------------------');

  /// fold
  final result=names.fold('', (result, str) => '$result ${str.toUpperCase()}');
  stdout.writeln(result);

  final number=[1,2,10];
  final sum=number.fold(0, (previousValue, element) => previousValue+element);
  stdout.writeln("fold sum of array=$sum");
  final sumSquare=number.fold(0, (previousValue, element) => (previousValue*previousValue)+element*element);
  stdout.writeln("fold square sum of array=$sumSquare");
print('sublist------------------------------------');
  var myList= [1,2,3,4,5];
  print(myList.sublist(1,3)); // [2,3]
  print(myList.sublist(1)); // [2,3,4,5]

  ///This method re-arranges order of the elements in the given list randomly.
  print('shuffle------------------------------------');
  myList.shuffle();
  print('$myList'); // [5,4,3,1,2]

  print('reversed------------------------------------');
  var descList= [6,5,4,3,2,1];
  print(descList.reversed.toList()); // [1,2,3,4,5,6]

  var ascList = [1,2,3,4,5,6];
  print(ascList.reversed.toList()); // [6,5,4,3,2,1]

  print('asMap------------------------------------');
  List<String> sports = ['cricket', 'football', 'tennis', 'baseball'];
  Map<int, String> map = sports.asMap();
  print(map); // {0: cricket, 1: football, 2: tennis, 3: baseball}
  print(map.keys.toList());


  print('whereType------------------------------------');
//Let’s say we have a list with mix data such as String and int and we just want to retrieve int data from it, then we would use whereType method as
  //Similarly, we can retrieve only String data by specifying
  var mixList = [1, "a", 2, "b", 3, "c", 4, "d"];
  var num = mixList.whereType<int>();
  print(num.toList()); // (1, 2, 3, 4)
  var str=mixList.whereType<String>();
  print(str.toList());

  print('whereType------------------------------------');
  var firstList = [1,2,3,4,5,6];
  print(firstList.firstWhere((i) => i < 4)); // 1

  var sList = ['one', 'two', 'three', 'four'];
  print(sList.firstWhere((i) => i.length > 3)); // three
  print(sList.lastWhere((i) => i.length > 3)); // three
  print(sList.where((i) => i.length > 3)); // three


  var listA=[1,3,4];
  var listB=[1,3,4,];
  listB.addAll(listA);
  print(listB);
}