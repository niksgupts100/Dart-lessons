int binarySearchAlgo(List<int> list, int target) {
  int low = 0;
  int high = list.length - 1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (list[mid] == target) {
      return mid;
    } else if (list[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}

void main() {
  List<int> sortedList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int search = 6;

  int res = binarySearchAlgo(sortedList, search);

  if (res != -1) {
    print('Element $search found at index $res');
  } else {
    print('Element $search not found in the list');
  }
}
