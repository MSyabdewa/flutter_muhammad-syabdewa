// Soal no 1
class Hewan {
  double berat;

  Hewan(
    this.berat,
  ) {
    this.berat = berat;
  }

  double getBerat() {
    return berat;
  }
}

// soal no 2
class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil(
    this.kapasitas,
    this.muatan,
  ) {
    this.kapasitas = kapasitas;
  }

  void tambahMuatan(Hewan hewan) {
    if (kapasitas >= totalMuatan() + hewan.getBerat()) {
      muatan.add(hewan);
      print('Muatan ditambahkan: ${hewan.getBerat()} kg');
    } else {
      print('Kapasitas muatan tidak mencukupi');
    }
  }

  double totalMuatan() {
    double total = 0;
    for (var hewan in muatan) {
      total += hewan.getBerat();
    }
    return total;
  }
}

void main() {
  // Hewan kucing = Hewan(3.5);

  // print('Berat kucing: ${kucing.getBerat()} kg');

  Mobil mobil = Mobil(10.0, []);

  Hewan kucing = Hewan(5.0);
  Hewan anjing = Hewan(10.0);

  mobil.tambahMuatan(kucing);
  mobil.tambahMuatan(anjing);

  print('Total muatan mobil: ${mobil.totalMuatan()} kg');
}
