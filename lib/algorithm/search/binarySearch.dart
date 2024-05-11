int binarySearch(List<int> sortedList, int target) {
  int left = 0;
  int right = sortedList.length - 1;

  while (left <= right) {
    int mid = (right + left) ~/ 2; // Calculate middle index
    print("mid=index= $mid");
    if (sortedList[mid] == target) {
      return mid; // Return the index of the target element if found
    } else if (sortedList[mid] < target) {
      left = mid + 1; // Search the right half
    } else {
      right = mid - 1; // Search the left half
    }
  }

  return -1; // Return -1 if the target element is not found in the list
}

int binarySearchRecursive(List<int> arr, int l, int r, int x) {
  if (r >= l) {
    int mid = (r + l) ~/ 2;

// If the element is present at the
// middle itself
    if (arr[mid] == x) return mid;

// If element is smaller than mid, then
// it can only be present in left subarray
    if (arr[mid] < x)
      return binarySearchRecursive(arr, mid + 1, r, x);

// Else the element can only be present
// in right subarray
    else
      return binarySearchRecursive(arr, l, mid - 1, x);
  }

// We reach here when element is not present
// in array
  return -1;
}

void main() {
  List<int> numbers = [1, 2, 3, 4];
  int target = 1;

  int result = binarySearch(numbers, target);
  int resultR = binarySearchRecursive(numbers, 0, numbers.length - 1, target);

  if (result != -1) {
    print('Element $target found at index $result');
  } else {
    print('Element $target not found in the list');
  }

  if (resultR != -1) {
    print('Recursive Element $target found at index $result');
  } else {
    print('RecursiveElement $target not found in the list');
  }
}
