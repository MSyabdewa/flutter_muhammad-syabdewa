void main() {
  List<String> input = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];

  Map<String, int> frequencyMap = countFrequency(input);

  print('Input: $input');
  print('Output: $frequencyMap');
}

Map<String, int> countFrequency(List<String> data) {
  Map<String, int> frequencyMap = {};

  for (String item in data) {
    // Jika item sudah ada di dalam map, increment frekuensinya
    if (frequencyMap.containsKey(item)) {
      frequencyMap[item] = frequencyMap[item]! + 1;
    } else {
      // Jika belum ada, tambahkan item ke dalam map dengan frekuensi 1
      frequencyMap[item] = 1;
    }
  }

  return frequencyMap;
}
