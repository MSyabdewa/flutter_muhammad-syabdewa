void main() {
  List<String> input1 = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];
  List<String> input2 = [
    'JS Racing',
    'amuse',
    'spoon',
    'spoon',
    'JS Racing',
    'amuse'
  ];

  List<String> output1 = removeDuplicates(input1);
  List<String> output2 = removeDuplicates(input2);

  print('Input 1: $input1');
  print('Output 1: $output1');

  print('\nInput 2: $input2');
  print('Output 2: $output2');
}

List<String> removeDuplicates(List<String> input) {
  // Menggunakan Set untuk menyaring nilai unik
  Set<String> uniqueValues = Set<String>.from(input);

  // Mengonversi kembali ke List untuk mendapatkan hasil akhir
  List<String> result = List<String>.from(uniqueValues);

  return result;
}
