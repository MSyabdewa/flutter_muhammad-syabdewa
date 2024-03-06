import 'dart:async';

Future<List<int>> multiplyList(List<int> data, int multiplier) async {
  List<int> result = [];

  await Future.forEach(data, (int value) async {
    await Future.delayed(Duration(seconds: 1));

    // Kalikan setiap elemen list dengan pengali
    int multipliedValue = value * multiplier;

    // Tambahkan hasil ke dalam list result
    result.add(multipliedValue);
  });

  return result;
}

void main() async {
  List<int> dataList = [1, 2, 3, 4, 5];
  int multiplier = 2;

  List<int> result = await multiplyList(dataList, multiplier);

  print('List awal: $dataList');
  print('Hasil perkalian dengan $multiplier: $result');
}
