# Summary

## 1. Shared Preferences
Shared Preferences adalah mekanisme penyimpanan sederhana yang disediakan oleh Flutter untuk menyimpan data dalam bentuk pasangan kunci-nilai. Data yang disimpan dengan menggunakan Shared Preferences akan bertahan bahkan setelah aplikasi ditutup atau perangkat direstart.

### Beberapa konsep penting terkait dengan Shared Preferences di Flutter:

- Preferences Instance: Untuk menggunakan Shared Preferences, pertama-tama kita perlu membuat instance dari SharedPreferences.

- Menyimpan Data: Data dapat disimpan dalam Shared Preferences menggunakan method setString, setInt, setBool, dan sebagainya, tergantung pada jenis data yang disimpan.

- Membaca Data: Data dapat dibaca dari Shared Preferences menggunakan method getString, getInt, getBool, dan sebagainya.

- Menghapus Data: Data dapat dihapus dari Shared Preferences menggunakan method remove atau clear.


## 2. Local Database (SQLite)
Local Database dalam konteks Flutter mengacu pada penyimpanan data yang lebih kompleks dan terstruktur dalam bentuk tabel menggunakan SQLite, sebuah database relasional yang disertakan dengan Flutter.

### Beberapa konsep penting terkait dengan Local Database (SQLite) di Flutter:

- Sqflite Package: Sqflite adalah paket Flutter yang digunakan untuk berinteraksi dengan SQLite di aplikasi Flutter.

- Database Instance: Untuk menggunakan SQLite, pertama-tama kita perlu membuat atau membuka instance database menggunakan Sqflite.

- Tabel Database: Setelah membuat database instance, kita dapat membuat tabel-tabel yang akan digunakan untuk menyimpan data.

- Operasi CRUD: Setelah membuat tabel, kita dapat melakukan operasi CRUD (Create, Read, Update, Delete) untuk mengelola data di dalam tabel tersebut.