# Summary


## 1. Declarative UI
Declarative UI adalah pendekatan dalam pengembangan perangkat lunak di mana pengembang mendefinisikan struktur antarmuka pengguna (UI) dengan mendeklarasikan bagaimana UI harus ditampilkan berdasarkan status aplikasi. Dalam konteks Flutter, UI didefinisikan menggunakan widget yang menyatakan komponen UI dalam bentuk pohon widget.

### Konsep penting dalam Declarative UI di Flutter:

- Widget Tree: UI dalam Flutter didefinisikan sebagai pohon widget, di mana setiap node atau widget mewakili komponen UI yang spesifik, seperti teks, gambar, tombol, dan lain-lain.

- Reactivity: Flutter secara otomatis menangani pembaruan UI berdasarkan perubahan dalam state aplikasi. Ketika state aplikasi berubah, Flutter secara deklaratif membangun ulang bagian UI yang diperlukan untuk mencerminkan perubahan tersebut.


## 2. SetState
setState adalah method yang digunakan dalam Flutter untuk memberitahu framework bahwa state sebuah widget telah berubah, dan framework harus membangun ulang widget tersebut untuk mencerminkan perubahan state. Method setState digunakan dalam stateful widget untuk memperbarui state dan memicu pembaruan UI secara reaktif.

### Beberapa konsep penting terkait dengan setState di Flutter:

- Perubahan State: Ketika state sebuah widget berubah, panggil setState untuk memberi tahu framework bahwa perubahan state telah terjadi.

- Rebuild UI: Framework akan memanggil method build dari widget setelah setState dipanggil, sehingga memicu pembangunan ulang UI dengan mempertimbangkan perubahan state.

## 3. Provider
Provider adalah paket manajemen state yang populer dalam ekosistem Flutter, yang digunakan untuk mengelola state aplikasi dan membuat state global dapat diakses di seluruh aplikasi. Provider memungkinkan pengembang untuk mengirimkan state ke dalam widget tree dan mengaksesnya dari berbagai bagian aplikasi tanpa perlu melewati banyak lapisan widget.

### Beberapa konsep penting terkait dengan Provider di Flutter:

- ChangeNotifier: Provider biasanya digunakan dengan model ChangeNotifier, yang mengirimkan notifikasi ketika state berubah dan memicu pembangunan ulang widget yang menggunakan state tersebut.

- Provider.of: Method Provider.of digunakan untuk mengakses state dari widget tree. Ketika state berubah, widget yang menggunakan Provider.of akan diperbarui secara otomatis.

- Provider Model: Pengembang dapat membuat model khusus untuk state aplikasi dan menggunakan Provider untuk menyediakan dan mengakses model tersebut di seluruh aplikasi.

## 4. BLoC
BLoC (Business Logic Component) adalah pola arsitektur yang digunakan dalam pengembangan aplikasi Flutter untuk memisahkan logika bisnis dari tampilan dan interaksi pengguna. Dalam pola BLoC, logika bisnis dan state aplikasi diisolasi dalam komponen yang disebut BLoC, yang berinteraksi dengan tampilan melalui aliran data yang disebut stream.

### Beberapa konsep penting terkait dengan BLoC di Flutter:

- BlocProvider: BlocProvider adalah widget yang digunakan untuk menyediakan BLoC ke dalam widget tree, sehingga BLoC dapat diakses dari berbagai bagian aplikasi.

- BlocBuilder: BlocBuilder adalah widget yang digunakan untuk membangun tampilan berdasarkan data yang diterima dari BLoC. Ketika data berubah, BlocBuilder secara otomatis membangun ulang widget.