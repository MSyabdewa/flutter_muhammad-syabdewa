import 'dart:io';
import 'dart:math';

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

double volumeTabung(double jariJari, double tinggi) {
  // Rumus volume tabung: V = π * r^2 * h
  double volume = pi * pow(jariJari, 2) * tinggi;
  return volume;
}

bool cekPalindrom(String kata) {
  // Menghilangkan spasi dan mengubah ke huruf kecil
  String kataTanpaSpasi = kata.replaceAll(' ', '').toLowerCase();

  // Mengecek palindrom
  String kataBalik = kataTanpaSpasi.split('').reversed.join('');
  return kataTanpaSpasi == kataBalik;
}

void cariFaktor(int bilangan) {
  print('Faktor dari $bilangan adalah:');

  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      print(i);
    }
  }
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

  // Variabel yang bisa bernilai null (nullable)
  String? nullableString;
  int? nullableInt;

  // Variabel yang tidak bisa bernilai null (non-nullable)
  String nonNullableString = "Hello World";
  int nonNullableInt = 28;

  // Menyambungkan variabel
  String firstName = "Muhammad";
  String middleName = "Syab";
  String lastName = "dewa";

  print(firstName + " " + middleName + lastName);

  String inputKata = "oyo";
  bool hasil = cekPalindrom(inputKata);

  if (hasil) {
    print('$inputKata adalah palindrom');
  } else {
    print('$inputKata bukan palindrom');
  }

  stdout.write('Masukkan sebuah bilangan: ');
  int inputBilangan = int.parse(stdin.readLineSync()!);

  cariFaktor(inputBilangan);
}
