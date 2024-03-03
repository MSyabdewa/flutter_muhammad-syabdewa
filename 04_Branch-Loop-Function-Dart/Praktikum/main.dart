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
}
