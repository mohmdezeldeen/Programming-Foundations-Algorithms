void main(List<String> arguments) {
  List<int> items = [6, 20, 8, 19, 56, 23, 87, 41, 49, 53];

// test the quick sort with data
  print(items);
  quickSort(items, 0, items.length - 1);
  print(items);
}

quickSort(dataset, first, last) {
  if (first < last) {
    // calculate the split point
    var pivotIdx = partition(dataset, first, last);

    // now sort the two partitions
    quickSort(dataset, first, pivotIdx - 1);
    quickSort(dataset, pivotIdx + 1, last);
  }
}

partition(datavalues, first, last) {
  // choose the first item as the pivot value
  var pivotvalue = datavalues[first];
  // establish the upper and lower indexes
  var lower = first + 1;
  var upper = last;

  //start searching for the crossing point
  bool done = false;
  while (!done) {
    // advance the lower index
    while (lower <= upper && datavalues[lower] <= pivotvalue) {
      lower += 1;
    }

    // advance the upper index
    while (datavalues[upper] >= pivotvalue && upper >= lower) {
      upper -= 1;
    }

    // if the two indexes cross, we have found the split point
    if (upper < lower) {
      done = true;
    } else {
      // exchange the two values
      var temp = datavalues[lower];
      datavalues[lower] = datavalues[upper];
      datavalues[upper] = temp;
    }
  }

  // when the split point is found, exchange the pivot value
  var temp = datavalues[first];
  datavalues[first] = datavalues[upper];
  datavalues[upper] = temp;

  // return the split point index
  return upper;
}
