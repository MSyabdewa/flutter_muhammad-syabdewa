class Matematika {
  int hasil() {
    return 0;
  }
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    int kelipatan = x;
    while (kelipatan % y != 0) {
      kelipatan += x;
    }
    return kelipatan;
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  int x;
  int y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    int a = x;
    int b = y;
    while (b != 0) {
      int t = b;
      b = a % b;
      a = t;
    }
    return a;
  }
}

void main() {
  // Jawaban soal prioritas 2 no 2
  // Membuat objek dari kelas KelipatanPersekutuanTerkecil
  KelipatanPersekutuanTerkecil kpt = KelipatanPersekutuanTerkecil(6, 8);
  // Membuat objek dari kelas FaktorPersekutuanTerbesar
  FaktorPersekutuanTerbesar fpt = FaktorPersekutuanTerbesar(24, 36);

  // Memanggil metode hasil() dan menampilkannya pada layar
  print('Kelipatan Persekutuan Terkecil: ${kpt.hasil()}');
  print('Faktor Persekutuan Terbesar: ${fpt.hasil()}');
}
