void main(List<String> arguments) {
// determine if a list is sorted
  List<int> items1 = [6, 8, 19, 20, 23, 41, 49, 53, 56, 87];
  List<int> items2 = [6, 20, 8, 19, 56, 23, 87, 41, 49, 53];

  print(isSorted(items1));
  print(isSorted(items2));
}

isSorted(itemlist) {
  // using the brute force method
  for (int i = 0; i < itemlist.length - 1; i++) {
    if (itemlist[i] > itemlist[i + 1]) {
      return false;
    }
  }
  return true;
}
