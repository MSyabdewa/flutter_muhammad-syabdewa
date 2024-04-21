# Summary

## 1. State
State dalam konteks Flutter mengacu pada data yang memengaruhi tampilan atau perilaku widget dalam aplikasi. Setiap widget dalam Flutter dapat memiliki state sendiri, yang mengontrol bagaimana widget tersebut dirender dan berinteraksi dengan pengguna. State dapat berubah selama siklus hidup aplikasi, seperti saat pengguna berinteraksi dengan widget atau saat data aplikasi diperbarui.

### Ada dua jenis state dalam Flutter

- Stateless Widget: Widget yang tidak memiliki state internal dan tidak berubah selama siklus hidup aplikasi. Stateless widget dirender berdasarkan input yang diberikan kepadanya dan tidak dapat diubah oleh pengguna.

- Stateful Widget: Widget yang memiliki state internal dan dapat berubah selama siklus hidup aplikasi. Stateful widget dirender berdasarkan state yang dimilikinya, dan dapat diperbarui atau diubah oleh pengguna atau perubahan data.

## 2. Global State

Global state dalam konteks Flutter mengacu pada state yang dapat diakses atau dibagikan oleh berbagai bagian dari aplikasi tanpa perlu melewati banyak lapisan widget. Global state biasanya digunakan untuk menyimpan data atau status aplikasi yang penting dan dapat diakses dari berbagai bagian aplikasi.

### Ada beberapa cara untuk mengimplementasikan global state dalam Flutter:

- InheritedWidget: InheritedWidget adalah widget khusus Flutter yang memungkinkan state untuk diwariskan ke dalam subtree widget, sehingga dapat diakses oleh widget di dalam subtree tersebut.

- Provider: Paket Flutter provider adalah solusi yang populer untuk mengelola state global dalam aplikasi Flutter. Provider memungkinkan untuk membuat dan mengakses state global dengan mudah dan efisien.