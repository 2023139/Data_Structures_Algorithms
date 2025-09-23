void main() {
  final myList = [2, 4, 8, 20, 23, 45, 66, 70, 81];
  final searchValue = 81;
  final index = binarySearch(myList, searchValue);

  if (index == null) {
    print("Not Found");
  } else {
    print("Found $searchValue at index $index");
  }
}

int? binarySearch(List<int> myList, int searchValue) {
  int lowIndex = 0;
  int highIndex = myList.length - 1;

  while (lowIndex <= highIndex) {
    int middleIndex = (lowIndex + highIndex) ~/ 2;
    int guess = myList[middleIndex];

    if (guess == searchValue) {
      return middleIndex;
    } else if (guess < searchValue) {
      lowIndex = middleIndex + 1;
    } else {
      highIndex = middleIndex - 1;
    }
  }
  return null;
}
