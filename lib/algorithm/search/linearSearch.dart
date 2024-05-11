void main() {
  List<int> numbers = [5, 10, 3, 8, 2, 7];
  int target = 1;

  int result = linearSearch(numbers, target);

  if (result != -1) {
    print('Element $target found at index $result');
  } else {
    print('Element $target not found in the list');
  }
}


int linearSearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i; // Return the index of the target element if found
    }
  }
  return -1; // Return -1 if the target element is not found in the list
}


