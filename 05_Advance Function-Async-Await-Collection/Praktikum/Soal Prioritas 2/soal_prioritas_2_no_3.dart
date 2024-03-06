import 'dart:async';

Future<int> hitungFaktorial(int n) async {
  if (n < 0) {
    throw ArgumentError('Bilangan faktorial harus non-negatif.');
  }

  int hasil = 1;

  for (int i = 2; i <= n; i++) {
    // Simulasi operasi yang membutuhkan waktu
    await Future.delayed(Duration(milliseconds: 100));

    hasil *= i;
  }

  return hasil;
}

void main() async {
  try {
    int n = 5; // Ganti dengan nilai faktorial yang ingin dihitung

    print('Menghitung faktorial dari $n secara asinkron...');
    int hasilFaktorial = await hitungFaktorial(n);

    print('Hasil faktorial dari $n adalah $hasilFaktorial');
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}
