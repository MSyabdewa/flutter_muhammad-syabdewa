# Summary

## 1. Layout
Layout dalam konteks pengembangan perangkat lunak mengacu pada tata letak atau susunan dari elemen-elemen antarmuka pengguna (UI) dalam sebuah aplikasi. Ini mencakup cara posisi dan ukuran elemen-elemen tersebut di layar agar pengguna dapat berinteraksi dengan mereka dengan cara yang terorganisir dan efisien. Layout membantu mengatur tampilan UI agar mudah dibaca, dipahami, dan diakses oleh pengguna.

## 2. Single-child Layout
Single-child layout adalah jenis layout di mana widget hanya memiliki satu anak (child) di dalamnya. Anak ini biasanya ditempatkan di pusat atau di tengah-tengah dari layout induknya. Single-child layout cocok untuk kasus di mana kita hanya perlu menampilkan satu widget atau elemen dalam satu wilayah tampilan.

### Contoh single-child layout

- Center: Membungkus widget child dan menempatkannya di tengah-tengah dari layout.
- Container: Widget yang dapat menampung satu widget child dan memiliki properti untuk mengatur penempatan, ukuran, dan dekorasi dari widget anak tersebut.
- Scaffold: Widget yang menyediakan tata letak dasar untuk aplikasi Flutter, termasuk AppBar, Drawer, dan lainnya, dan hanya memiliki satu anak di dalamnya.

## 3. Multi-child Layout
Multi-child layout adalah jenis layout di mana widget dapat memiliki lebih dari satu child di dalamnya. Children ini biasanya disusun dalam urutan tertentu, baik secara vertikal (kolom) atau horizontal (baris), tergantung pada jenis layout yang digunakan. Multi-child layout cocok untuk kasus di mana kita perlu menampilkan beberapa widget atau elemen dalam satu wilayah tampilan.

### Contoh multi-child layout

- Column: Layout vertikal yang mengatur children dalam satu kolom dari atas ke bawah.
- Row: Layout horizontal yang mengatur children dalam satu baris dari kiri ke kanan.
- Stack: Layout yang mengizinkan penempatan children secara relatif terhadap satu sama lain, sehingga mereka dapat bertumpuk di atas satu sama lain dalam lapisan.
- ListView: Layout yang mengatur children dalam daftar yang dapat digulirkan, baik secara vertikal maupun horizontal, dan cocok untuk menampilkan daftar item yang panjang atau lebar.