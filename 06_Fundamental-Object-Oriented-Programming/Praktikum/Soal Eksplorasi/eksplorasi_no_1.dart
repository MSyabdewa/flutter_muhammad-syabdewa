class Buku {
  int id;
  String judul;
  String penerbit;
  double harga;
  String kategori;

  // Constructor untuk inisialisasi objek Buku
  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);
}

class TokoBuku {
  List<Buku> daftarBuku = [];

  // Method untuk menambahkan buku ke daftar
  void tambahBuku(Buku buku) {
    daftarBuku.add(buku);
    print('Buku ditambahkan: ${buku.judul}');
  }

  // Method untuk mendapatkan semua buku
  List<Buku> dapatkanSemuaBuku() {
    return daftarBuku;
  }

  // Method untuk menghapus buku berdasarkan ID
  void hapusBuku(int id) {
    daftarBuku.removeWhere((buku) => buku.id == id);
  }
}

void main() {
  // Contoh penggunaan class Buku dan TokoBuku
  TokoBuku tokoBuku = TokoBuku();

  Buku buku1 = Buku(1, 'Judul Buku 1', 'Penerbit A', 50.0, 'Fiksi');
  Buku buku2 = Buku(2, 'Judul Buku 2', 'Penerbit B', 40.0, 'Non-Fiksi');
  Buku buku3 = Buku(3, 'Judul Buku 3', 'Penerbit C', 60.0, 'Pendidikan');

  // Menambahkan buku ke dalam toko
  tokoBuku.tambahBuku(buku1);
  tokoBuku.tambahBuku(buku2);
  tokoBuku.tambahBuku(buku3);

  // Mendapatkan semua buku yang ada di toko
  List<Buku> semuaBuku = tokoBuku.dapatkanSemuaBuku();
  print('\nSemua Buku di Toko:');
  for (var buku in semuaBuku) {
    print(
        '${buku.id}. ${buku.judul} - ${buku.penerbit} - ${buku.harga} - ${buku.kategori}');
  }

  // Menghapus buku dengan ID 2
  tokoBuku.hapusBuku(2);

  // Mendapatkan semua buku setelah penghapusan
  semuaBuku = tokoBuku.dapatkanSemuaBuku();
  print('\nSemua Buku di Toko setelah Penghapusan:');
  for (var buku in semuaBuku) {
    print(
        '${buku.id}. ${buku.judul} - ${buku.penerbit} - ${buku.harga} - ${buku.kategori}');
  }
}
