# Summary

## 1. Navigation
Navigation dasar dalam Flutter melibatkan penggunaan widget Navigator untuk menangani perpindahan antara layar atau halaman dalam aplikasi. Saat menggunakan navigation dasar, setiap layar dalam aplikasi diwakili oleh widget yang dibungkus dalam MaterialPageRoute atau CupertinoPageRoute, tergantung pada platform yang ditargetkan.

### Beberapa langkah dasar dalam navigasi dalam Flutter:

- Push: Untuk berpindah ke layar baru, panggil method Navigator.push dan berikan MaterialPageRoute atau CupertinoPageRoute yang berisi widget layar baru.
- Pop: Untuk kembali ke layar sebelumnya, panggil method Navigator.pop.
- Arguments: Untuk mengirim data antara layar, gunakan argumen pada Navigator.push.

### Contoh navigasi dasar dalam Flutter:

```dart
// Navigasi ke layar baru
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => SecondScreen(),
  ),
);

// Kembali ke layar sebelumnya
Navigator.pop(context);
```
## 2. Navigation dengan Named Routes
Navigation dengan Named Routes adalah pendekatan yang lebih terstruktur dalam menangani navigasi antara layar atau halaman dalam aplikasi Flutter. Dalam pendekatan ini, setiap layar dalam aplikasi diberi nama, dan rute-nama ditentukan dalam file MaterialApp atau CupertinoApp. Ini memungkinkan navigasi yang lebih mudah dan dapat diprediksi dalam aplikasi yang lebih besar.

### Beberapa langkah dalam navigation dengan Named Routes:

- Definisikan Rute-Nama: Tentukan rute-nama dan widget yang sesuai untuk setiap layar dalam aplikasi dalam widget MaterialApp atau CupertinoApp.
- Navigasi dengan Rute-Nama: Untuk berpindah ke layar baru, panggil method Navigator.pushNamed dengan rute-nama yang sesuai.
- Kirim Data: Untuk mengirim data antara layar, gunakan argumen yang tersedia dalam method Navigator.pushNamed.

### Contoh navigation dengan Named Routes dalam Flutter:

```dart
// Definisikan rute-nama dalam MaterialApp
MaterialApp(
  routes: {
    '/': (context) => HomeScreen(),
    '/second': (context) => SecondScreen(),
  },
);

// Navigasi dengan rute-nama
Navigator.pushNamed(context, '/second');

// Navigasi dengan rute-nama dan mengirim data
Navigator.pushNamed(context, '/second', arguments: data);
```