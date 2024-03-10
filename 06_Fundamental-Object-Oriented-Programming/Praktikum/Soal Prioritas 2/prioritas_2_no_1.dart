class Calculator {
  double tambah(double a, double b) {
    return a + b;
  }

  double kurang(double a, double b) {
    return a - b;
  }

  double kali(double a, double b) {
    return a * b;
  }

  double bagi(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      print('Error: Pembagian oleh nol tidak diizinkan.');
      return double
          .nan; // Mengembalikan NaN (Not a Number) untuk menandakan error
    }
  }
}

void main() {
  Calculator calculator = Calculator();

  double value1 = 10.0;
  double value2 = 3.0;

  // Penjumlahan
  print('Penjumlahan: ${calculator.tambah(value1, value2)}');

  // Pengurangan
  print('Pengurangan: ${calculator.kurang(value1, value2)}');

  // Perkalian
  print('Perkalian: ${calculator.kali(value1, value2)}');

  // Pembagian
  print('Pembagian: ${calculator.bagi(value1, value2)}');
}
