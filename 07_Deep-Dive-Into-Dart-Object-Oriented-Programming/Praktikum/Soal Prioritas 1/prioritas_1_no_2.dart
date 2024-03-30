class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  double volume() {
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  double sisi;

  Kubus(
    this.sisi,
  ) : super(sisi, sisi, sisi) {
    this.sisi = sisi;
  }

  // Overriding method volume untuk kubus
  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);

  // Overriding method volume untuk balok
  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}

void main() {
  BangunRuang bangun = BangunRuang(4.0, 3.0, 5.0);
  Kubus kubus = Kubus(5.0);
  Balok balok = Balok(4.0, 6.0, 8.0);

  // Memanggil method volume untuk masing-masing objek
  print('Volume BangunRuang: ${bangun.volume()}');
  print('Volume Kubus: ${kubus.volume()}');
  print('Volume Balok: ${balok.volume()}');
}
