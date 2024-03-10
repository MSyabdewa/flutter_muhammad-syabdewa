# Summary

## 1. Class

- Kelas adalah struktur dasar dalam pemrograman berorientasi objek (OOP) yang memungkinkan pengelompokan data (properti) dan perilaku (metode) ke dalam satu kesatuan.
- Dart mendukung konsep OOP, sehingga programmer dapat membuat kelas untuk merepresentasikan objek dalam program mereka.
- Contoh deklarasi kelas:
```
class Mobil {
  // Properti (variabel anggota)
  String merk;
  int tahunProduksi;

  // Konstruktor
  Mobil(this.merk, this.tahunProduksi);

  // Metode (fungsi anggota)
  void info() {
    print('Mobil $merk, tahun $tahunProduksi');
  }
}
```

## 2. Property

- Properti adalah variabel yang terkait dengan suatu objek dalam kelas.
- Properti menyimpan data atau nilai yang dapat diakses dan dimodifikasi oleh metode dalam kelas.
- Dalam contoh di atas, merk dan tahunProduksi adalah properti dari kelas Mobil

## 3. Method

- Metode adalah fungsi yang terkait dengan suatu objek dalam kelas.
- Metode memberikan perilaku atau tindakan yang dapat dilakukan oleh objek tersebut.
- Dalam contoh di atas, info adalah metode yang mencetak informasi tentang mobil, menggunakan properti yang dimiliki oleh objek tersebut.