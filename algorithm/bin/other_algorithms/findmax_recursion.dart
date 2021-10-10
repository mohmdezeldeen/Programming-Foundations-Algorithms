void main(List<String> arguments) {
// use a recursive algorithm to find a maximum value

// declare a list of values to operate on
  List<int> items = [6, 20, 8, 19, 56, 23, 87, 41, 49, 53];

// test the function
  print(findMax(items));
}

findMax(List<int> items) {
  // breaking condition: last item in list? return it
  if (items.length == 1) {
    return items[0];
  }

  // otherwise get the first item and call function
  // again to operate on the rest of the list
  var op1 = items[0];
  print(op1);

  var op2 = findMax(items.getRange(1, items.length).toList());
  print('$op1, $op2');

  // perform the comparison when we're down to just two
  if (op1 > op2) {
    return op1;
  } else {
    return op2;
  }
}
