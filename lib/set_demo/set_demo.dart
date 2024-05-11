/// does not have duplicate ,unordered


// Dart program to show the Sets concept
void main()
{
  // Declaring set in First Way
  var gfg1 = <String>{'GeeksForGeeks'};

  // Printing First Set
  print("Output of first set: $gfg1");

  // Declaring set in Second Way
  Set<String> gfg2 = {'GeeksForGeeks'};
  ///repeated value was simply ignored in the case of the set.

  Set <String>gfg3 = {'Geeks','For','Geeks','GeeksForGeeks'};

  // Printing Second Set
  print("Output of second set: $gfg2,");
  print("Output of third set: $gfg3");
  for (var element in gfg3) {
    if(element == "Geek1")
    {
      print("Found");
    }
    else
    {
      print("Not Found");
    }
  }

  gfg3.toList();
  print(gfg3);
  // Finding Union
  print("Union of two sets is ${gfg1.union(gfg2).union(gfg3)}\n");

  // Finding Intersection
  print("Intersection of two sets is ${gfg1.intersection(gfg2).intersection(gfg3)}\n");

  // Finding Difference
  print("Difference of two sets is ${gfg2.difference(gfg1).difference(gfg3)}\n");


  
}