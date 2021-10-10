void main(List<String> arguments) {
  List<int> items = [6, 20, 8, 19, 56, 23, 87, 41, 49, 53];

// test the unOrdered List Search with data
  print(findItem(87, items));
  print(findItem(250, items));
}

findItem(item, itemlist) {
  for (int i = 0; i < itemlist.length; i++) {
    if (item == itemlist[i]) {
      return i;
    }
  }

  return 'None';
}
