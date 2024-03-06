void main() {
  List<List<dynamic>> nestedList = [
    ['Apple', 5],
    ['Banana', 3],
    ['Orange', 7],
    ['Grapes', 10],
  ];

  // Membuat map dari list tersebut
  Map<String, int> fruitMap = {};

  for (var element in nestedList) {
    // Memastikan bahwa setiap elemen dalam list memiliki dua sub-elemen
    if (element.length == 2) {
      // Menambahkan data ke dalam map
      fruitMap[element[0]] = element[1];
    }
  }

  // Menampilkan list
  print(nestedList);
  // Menampilkan map
  print(fruitMap);
}
