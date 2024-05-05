# Summary

## 1. MVVM
MVVM adalah singkatan dari Model-View-ViewModel, sebuah pola arsitektur perangkat lunak yang digunakan dalam pengembangan aplikasi untuk memisahkan antara logika bisnis aplikasi, tampilan, dan representasi data. Pola arsitektur ini memiliki tiga komponen utama:

- Model: Representasi data dan logika bisnis dari aplikasi. Model menggambarkan struktur data dan bagaimana data diolah dalam aplikasi.
- View: Komponen yang bertanggung jawab untuk menampilkan informasi kepada pengguna dan menanggapi interaksi pengguna. View biasanya terdiri dari elemen-elemen antarmuka pengguna (UI), seperti tombol, teks, gambar, dan sebagainya.
- ViewModel: Penghubung antara Model dan View. ViewModel mengelola state aplikasi dan berfungsi sebagai perantara antara View dan Model. Ini bertanggung jawab untuk menyediakan data yang diperlukan oleh View dan mengonversi data dari Model ke format yang sesuai untuk ditampilkan di View.

## 2. Aturan pada MVVM:
Meskipun tidak ada aturan yang ketat dalam menerapkan MVVM, terdapat beberapa prinsip atau aturan umum yang sering diterapkan dalam pengembangan aplikasi dengan pola arsitektur ini:

- Separation of Concerns: Prinsip utama dalam MVVM adalah memisahkan perhatian antara tampilan, logika bisnis, dan representasi data. Setiap komponen harus memiliki tanggung jawab yang jelas dan terpisah.
- Data Binding: ViewModel bertanggung jawab untuk menyediakan data yang dibutuhkan oleh View. ViewModel dan View terhubung melalui mekanisme data binding, yang memungkinkan perubahan dalam ViewModel secara otomatis diperbarui di View dan sebaliknya.
- No Business Logic in View: View harus bebas dari logika bisnis. Semua logika bisnis harus dipindahkan ke ViewModel, sehingga View hanya bertanggung jawab untuk menampilkan data dan menanggapi interaksi pengguna.
- Testability: MVVM memungkinkan aplikasi untuk diuji secara efisien karena logika bisnis terisolasi dalam ViewModel. Unit test dapat ditulis untuk menguji ViewModel tanpa perlu memperhatikan tampilan.