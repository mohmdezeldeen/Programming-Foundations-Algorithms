// void main(List<String> arguments) {
//   List<int> array = [526, 622, 511, 800, 56, 23, 87, 41, 49, 53];
//   List<int> sortedarray = bubbleSort(array);
//   print('Result: $sortedarray');
// }

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        // Swapping using temporary variable
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
      print('   Current state of j = $j: $array');
    }
    print(' Current state of i = $i: $array');
  }
  return (array);
}
