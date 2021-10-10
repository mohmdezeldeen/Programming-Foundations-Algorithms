void main(List<String> arguments) {
  List<int> items = [6, 8, 19, 20, 23, 41, 49, 53, 56, 87];

// test the Binary Search with data
  print(binarysearch(23, items));
  print(binarysearch(87, items));
  print(binarysearch(250, items));
}

binarysearch(item, itemlist) {
  // get the list size
  var listsize = itemlist.length - 1;
  // start at the two ends of the list
  var lowerIdx = 0;
  var upperIdx = listsize;

  while (lowerIdx <= upperIdx) {
    // calculate the middle point
    var midPt = (lowerIdx + upperIdx) ~/ 2;

    // if item is found, return the index
    if (itemlist[midPt] == item) {
      return midPt;
    }
    // otherwise get the next midpoint
    if (item > itemlist[midPt]) {
      lowerIdx = midPt + 1;
    } else {
      upperIdx = midPt - 1;
    }
  }

  if (lowerIdx > upperIdx) {
    return 'None';
  }
}
