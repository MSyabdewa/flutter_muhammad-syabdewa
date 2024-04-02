# Summary

## 1. MaterialApp
MaterialApp adalah widget yang menyediakan berbagai fitur yang diperlukan untuk membangun aplikasi yang berbasis Material Design di Flutter. Widget ini biasanya digunakan sebagai root widget dalam aplikasi Flutter.

### Beberapa fitur utama dari MaterialApp

- Home: Properti home digunakan untuk menetapkan halaman awal (home page) dari aplikasi.
- Routes: Properti routes memungkinkan kita untuk menetapkan rute-nama ke halaman-halaman aplikasi. Ini memungkinkan navigasi antar halaman menggunakan Navigator.
- Theme: Properti theme digunakan untuk menetapkan tema aplikasi, termasuk warna, teks, dan gaya visual lainnya.
- Title: Properti title digunakan untuk menetapkan judul aplikasi yang akan ditampilkan di bilah atas perangkat.

Contoh penggunaan MaterialApp

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MyApp',
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
  ));
}
```

## 2. CupertinoApp
CupertinoApp adalah widget yang menyediakan berbagai fitur yang diperlukan untuk membangun aplikasi yang berbasis gaya desain iOS di Flutter. Widget ini biasanya digunakan sebagai root widget dalam aplikasi Flutter yang ditargetkan untuk perangkat iOS.

### Beberapa fitur utama dari CupertinoApp

- Home: Properti home digunakan untuk menetapkan halaman awal (home page) dari aplikasi.
- Routes: Properti routes memungkinkan kita untuk menetapkan rute-nama ke halaman-halaman aplikasi. Ini memungkinkan navigasi antar halaman menggunakan Navigator.
- Theme: Properti theme digunakan untuk menetapkan tema aplikasi, termasuk warna, teks, dan gaya visual lainnya sesuai dengan desain iOS.
- Title: Properti title digunakan untuk menetapkan judul aplikasi yang akan ditampilkan di bilah atas perangkat.

Contoh penggunaan CupertinoApp

```dart
import 'package:flutter/cupertino.dart';

void main() {
  runApp(CupertinoApp(
    title: 'MyApp',
    home: HomePage(),
    theme: CupertinoThemeData(
      primaryColor: CupertinoColors.systemBlue,
    ),
  ));
}
```