import 'dart:math';

String kategoriNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40) {
    return "Nilai B";
  } else if (nilai > 0) {
    return "Nilai C";
  } else {
    return "";
  }
}

double hitungLuasLingkaran(double jariJari) {
  return pi * pow(jariJari, 2);
}

void main() {
  int nilai = 0;
  String kategori = kategoriNilai(nilai);

  if (kategori.isNotEmpty) {
    print('Kategori nilai untuk $nilai: $kategori');
  } else {
    print('Nilai $nilai tidak masuk dalam kategori yang ditentukan.');
  }

  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  List<String> buahList = [
    'Apple',
    'Banana',
    'Avocado',
    'Cherry',
    'Mango',
    'Apricot',
    'Blueberry',
    'Acerola',
    'Grape',
    'Almond'
  ];

  print('Buah-buah yang diawali dengan huruf A:');

  for (String buah in buahList) {
    if (buah.startsWith('A')) {
      print(buah);
    }
  }

  // int tinggiSegitiga = 6;
  // String str = "";

  // for (int i = 1; i <= tinggiSegitiga; i++) {
  //   for (int space = 1; space <= tinggiSegitiga - i; space++) {
  //     str = str + " ";
  //   }
  //   for (int j = 0; j < 2 * i - 1; j++) {
  //     str = str + "*";
  //   }
  //   str = str + "\n";
  // }

  // print(str);

  int tinggiJamPasir = 5;
  String str = "";

  // Bagian atas jam pasir
  for (int i = 1; i <= tinggiJamPasir; i++) {
    for (int space = 1; space <= i - 1; space++) {
      str = str + " ";
    }
    for (int j = 0; j < 2 * (tinggiJamPasir - i) + 1; j++) {
      str = str + "*";
    }
    str = str + "\n";
  }

  // Bagian bawah jam pasir
  for (int i = tinggiJamPasir - 1; i >= 1; i--) {
    for (int space = 1; space <= i - 1; space++) {
      str = str + " ";
    }
    for (int j = 0; j < 2 * (tinggiJamPasir - i) + 1; j++) {
      str = str + "*";
    }
    str = str + "\n";
  }

  print(str);

  double jariJariLingkaran = 5.0;
  double luasLingkaran = hitungLuasLingkaran(jariJariLingkaran);

  print('Jari-jari lingkaran: $jariJariLingkaran');
  print('Luas lingkaran: $luasLingkaran');
}
