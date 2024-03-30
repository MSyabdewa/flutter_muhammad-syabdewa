class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  // Constructor untuk inisialisasi objek BangunRuang
  BangunRuang(this.panjang, this.lebar, this.tinggi);
}

class Kubus extends BangunRuang {
  double sisi;

  // Constructor untuk inisialisasi objek Kubus
  Kubus(
    this.sisi,
  ) : super(sisi, sisi, sisi) {
    this.sisi = sisi;
  }
}

class Balok extends BangunRuang {
  // Constructor untuk inisialisasi objek Balok
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);
}

void main() {
  Kubus kubus = Kubus(5.0);
  Balok balok = Balok(4.0, 6.0, 8.0);

  // Output informasi Kubus
  print('Informasi Kubus:');
  print('Sisi: ${kubus.sisi}');
  print('Volume: ${kubus.panjang * kubus.lebar * kubus.tinggi}');
  print('');

  // Output informasi Balok
  print('Informasi Balok:');
  print('Panjang: ${balok.panjang}');
  print('Lebar: ${balok.lebar}');
  print('Tinggi: ${balok.tinggi}');
  print('Volume: ${balok.panjang * balok.lebar * balok.tinggi}');
}
