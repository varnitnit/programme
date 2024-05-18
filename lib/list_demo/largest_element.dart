// Main function
import "dart:math";

void main() {
  usingForLoop();
  geekList_sort();
  reduceM();
  reduceWM();
  foldM();
  foldMW();
}

usingForLoop() {
  var geekList = [121, 12, 33, 14, 3];

// Declaring and assigning the
// largestGeekValue and smallestGeekValue
  var largestGeekValue = geekList[0];
  var smallestGeekValue = geekList[0];

  for (var i = 0; i < geekList.length; i++) {
    // Checking for largest value in the list
    if (geekList[i] > largestGeekValue) {
      largestGeekValue = geekList[i];
    }

    // Checking for smallest value in the list
    if (geekList[i] < smallestGeekValue) {
      smallestGeekValue = geekList[i];
    }
  }

// Printing the values
  print("Smallest value in the list : $smallestGeekValue");
  print("Largest value in the list : $largestGeekValue");
}

void geekList_sort() {
  // Creating a geek list
  var geekList = [121, 123, 33, 14, 3];

  // Sorting the list
  geekList.sort();

  // Printing the values
  print("Smallest value in the list : ${geekList.first}");
  print("Largest value in the list : ${geekList.last}");
}

// Main function
void reduceM() {
  // Creating a geek list
  var geekList = [1216, 12, 33, 14, 3];
  var smallestGeekValue = geekList.reduce(min);
  var largestGeekValue = geekList.reduce(max);

  // Printing the values
  print("Smallest value in the list : $smallestGeekValue");
  print("Largest value in the list : $largestGeekValue");
}

void reduceWM() {
  var geekList = [121, 12, 333, 14, 3];
  var smallestGeekValue =
      geekList.reduce((current, next) => current < next ? current : next);
  var largestGeekValue =
      geekList.reduce((current, next) => current > next ? current : next);

  // Printing the values
  print("Smallest value in the list : $smallestGeekValue");
  print("Largest value in the list : $largestGeekValue");
}

void foldM() {
  var geekList = [121, 12, 33, 14, 3];
  var smallestGeekValue = geekList.fold(geekList[0], min);
  var largestGeekValue = geekList.fold(geekList[0], max);

  // Printing the values
  print("Smallest value in the list : $smallestGeekValue");
  print("Largest value in the list : $largestGeekValue");
}

void foldMW() {
  var geekList = [121, 12, 33, 142, 3];
  var smallestGeekValue = geekList.fold(geekList[0],
      (previous, current) => previous < current ? previous : current);
  var largestGeekValue = geekList.fold(geekList[0],
      (previous, current) => previous > current ? previous : current);

  // Printing the values
  print("Smallest value in the list : $smallestGeekValue");
  print("Largest value in the list : $largestGeekValue");
}
