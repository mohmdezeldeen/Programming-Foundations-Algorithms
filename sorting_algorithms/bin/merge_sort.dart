void main(List<String> arguments) {
  List<int> items = [6, 20, 8, 19, 56, 23, 87, 41, 49, 53];

// test the merge sort with data
  print(items);
  mergeSort(items);
  print(items);
}

mergeSort(List<int> array) {
  if (array.length > 1) {
    var mid = array.length ~/ 2;
    var leftarr = array.getRange(0, mid).toList();
    var rightarr = array.getRange(mid, array.length).toList();

    // recursively break down the arrays
    mergeSort(leftarr);
    mergeSort(rightarr);

    // now perform the merging
    int i = 0; // index into the left array
    int j = 0; // index into the right array
    int k = 0; // index into merged array

    // while both arrays have content
    while (i < leftarr.length && j < rightarr.length) {
      if (leftarr[i] < rightarr[j]) {
        array[k] = leftarr[i];
        i += 1;
      } else {
        array[k] = rightarr[j];
        j += 1;
      }
      k += 1;
    }

    //if the left array still has values, add them
    while (i < leftarr.length) {
      array[k] = leftarr[i];
      i += 1;
      k += 1;
    }

    // if the right array still has values, add them
    while (j < rightarr.length) {
      array[k] = rightarr[j];
      j += 1;
      k += 1;
    }
  }
}
