// Interface untuk bangun datar
abstract class BangunDatar {
  double getArea(); // Method untuk menghitung luas bangun datar
  double getPerimeter(); // Method untuk menghitung keliling bangun datar
}

// Class persegi panjang
class PersegiPanjang implements BangunDatar {
  double panjang;
  double lebar;

  PersegiPanjang(this.panjang, this.lebar);

  @override
  double getArea() {
    return panjang * lebar;
  }

  @override
  double getPerimeter() {
    return 2 * (panjang + lebar);
  }
}

// Class segitiga
class Segitiga implements BangunDatar {
  double alas;
  double tinggi;
  double sisi1;
  double sisi2;
  double sisi3;

  Segitiga(this.alas, this.tinggi, this.sisi1, this.sisi2, this.sisi3);

  @override
  double getArea() {
    return 0.5 * alas * tinggi;
  }

  @override
  double getPerimeter() {
    return sisi1 + sisi2 + sisi3;
  }
}

// Class lingkaran
class Lingkaran implements BangunDatar {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double getArea() {
    return 3.14 * jariJari * jariJari;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * jariJari;
  }
}

void main() {
  // Membuat objek persegi panjang
  PersegiPanjang pp = PersegiPanjang(5, 3);
  // Membuat objek segitiga
  Segitiga segitiga = Segitiga(4, 5, 3, 4, 5);
  // Membuat objek lingkaran
  Lingkaran lingkaran = Lingkaran(7);

  // Menampilkan luas dan keliling untuk tiga bangun datar
  print('Luas dan Keliling Persegi Panjang:');
  print('Luas: ${pp.getArea()}');
  print('Keliling: ${pp.getPerimeter()}');
  print('');

  print('Luas dan Keliling Segitiga:');
  print('Luas: ${segitiga.getArea()}');
  print('Keliling: ${segitiga.getPerimeter()}');
  print('');

  print('Luas dan Keliling Lingkaran:');
  print('Luas: ${lingkaran.getArea()}');
  print('Keliling: ${lingkaran.getPerimeter()}');
}
