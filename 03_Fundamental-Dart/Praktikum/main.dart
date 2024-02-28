// rumus persegi
double luasPersegi(double sisi) {
  return sisi * sisi;
}

double kelilingPersegi(double sisi) {
  return 4 * sisi;
}

// rumus persegi panjang
double luasPersegiPanjang(double panjang, double lebar) {
  return panjang * lebar;
}

double kelilingPersegiPanjang(double panjang, double lebar) {
  return 2 * (panjang + lebar);
}

// rumus lingkaran
double luasLingkaran(double radius) {
  return 3.14 * radius * radius;
}

double kelilingLingkaran(double radius) {
  return 2 * 3.14 * radius;
}

void main() {
  // Persegi
  double sisiPersegi = 5;
  print('Luas Persegi: ${luasPersegi(sisiPersegi)}');
  print('Keliling Persegi: ${kelilingPersegi(sisiPersegi)}');

  // Persegi Panjang
  double panjangPersegiPanjang = 6;
  double lebarPersegiPanjang = 8;
  print(
      'Luas Persegi Panjang: ${luasPersegiPanjang(panjangPersegiPanjang, lebarPersegiPanjang)}');
  print(
      'Keliling Persegi Panjang: ${kelilingPersegiPanjang(panjangPersegiPanjang, lebarPersegiPanjang)}');

  // Lingkaran
  double jariJariLingkaran = 4;
  print('Luas Lingkaran: ${luasLingkaran(jariJariLingkaran)}');
  print('Keliling Lingkaran: ${kelilingLingkaran(jariJariLingkaran)}');
}
