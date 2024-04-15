# Summary

## 1. AlertDialog
AlertDialog adalah widget yang digunakan untuk menampilkan pesan interaktif kepada pengguna dalam aplikasi Flutter. AlertDialog biasanya muncul sebagai jendela dialog kecil yang menghalangi interaksi dengan konten utama aplikasi, dan meminta pengguna untuk mengambil tindakan tertentu atau memberikan informasi penting.

### Beberapa konsep penting terkait dengan AlertDialog di Flutter:

- showDialog Function: Function showDialog digunakan untuk menampilkan AlertDialog dalam aplikasi Flutter.
- Title and Content: AlertDialog biasanya memiliki judul (title) yang menjelaskan pesan atau tindakan yang diminta, serta konten (content) yang memberikan informasi tambahan atau detail.
- Actions: AlertDialog dapat memiliki tombol aksi (actions) yang memungkinkan pengguna untuk mengambil tindakan tertentu, seperti menutup dialog, mengonfirmasi, atau membatalkan tindakan.
- Dismissal: AlertDialog biasanya dapat ditutup dengan mengklik tombol kembali (back) di perangkat, atau dengan mengklik di luar area dialog.

### Contoh penggunaan AlertDialog dalam Flutter:

```dart
void _showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert'),
        content: Text('Ini adalah pesan alert.'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Tutup'),
          ),
        ],
      );
    },
  );
}
```

## 2. Bottom Sheet
Bottom Sheet adalah widget yang digunakan untuk menampilkan konten tambahan di bagian bawah layar dalam aplikasi Flutter. Bottom Sheet dapat muncul sebagai bagian dari layar atau sebagai overlay yang menutupi konten utama aplikasi, dan biasanya digunakan untuk menampilkan menu, pengaturan, atau informasi tambahan.

### Beberapa konsep penting terkait dengan Bottom Sheet di Flutter:

- showBottomSheet Function: Function showBottomSheet digunakan untuk menampilkan Bottom Sheet dalam aplikasi Flutter.
- Bottom Sheet: persistent bottom sheet yang tetap ada di layar bahkan ketika pengguna berinteraksi dengan konten utama, dan modal bottom sheet yang menghalangi interaksi dengan konten utama.
- Content: Bottom Sheet biasanya memiliki konten yang berisi informasi tambahan, menu, atau pengaturan yang ingin ditampilkan kepada pengguna.
- Dismissal: Bottom Sheet dapat ditutup dengan menggeser ke atas (untuk persistent bottom sheet) atau dengan mengklik di luar area bottom sheet (untuk modal bottom sheet).

### Contoh penggunaan Bottom Sheet dalam Flutter:

```dart
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        child: Center(
          child: Text('Ini adalah konten bottom sheet.'),
        ),
      );
    },
  );
}
```