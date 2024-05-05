# Summary


## 1. REST API:
REST API (Representational State Transfer Application Programming Interface) adalah sebuah arsitektur berbasis standar HTTP yang digunakan dalam pengembangan aplikasi web dan mobile untuk mengirim dan menerima data antara server dan klien. REST API didasarkan pada prinsip-prinsip dasar REST, yang mengatur bagaimana sumber daya (resources) diidentifikasi dan diakses melalui antarmuka yang seragam dan terstruktur.

### Beberapa konsep penting terkait dengan REST API:

- Endpoints: REST API menyediakan berbagai endpoints yang mewakili sumber daya (resources) yang dapat diakses oleh klien. Setiap endpoint memiliki URL unik dan dapat digunakan untuk melakukan operasi CRUD (Create, Read, Update, Delete) terhadap sumber daya yang terkait.
- HTTP Methods: Untuk berinteraksi dengan sumber daya melalui REST API, klien menggunakan metode HTTP seperti GET, POST, PUT, DELETE untuk melakukan operasi yang sesuai.
- Representations: Data yang dikirimkan antara server dan klien melalui REST API dapat berupa berbagai representasi, seperti JSON, XML, atau bahkan HTML, tergantung pada kebutuhan aplikasi.

## 2. HTTP:
HTTP (Hypertext Transfer Protocol) adalah protokol komunikasi yang digunakan untuk mentransfer data antara klien dan server di web. HTTP menggunakan model permintaan-respons, di mana klien mengirim permintaan ke server dan server merespons dengan data yang diminta.

### Beberapa konsep penting terkait dengan HTTP di Flutter:

- HTTP Client: Paket http menyediakan HTTP client yang dapat digunakan untuk mengirim permintaan dan menerima respons dari server.
- GET, POST, PUT, DELETE: Paket http mendukung berbagai metode HTTP seperti GET, POST, PUT, DELETE yang digunakan untuk melakukan berbagai operasi terhadap sumber daya di server.
- Headers: HTTP client memungkinkan pengguna untuk menentukan header yang diperlukan dalam permintaan, seperti header otorisasi, tipe konten, atau header kustom.

## 3. Dio:
Dio adalah paket Flutter yang dikembangkan oleh Flutter China Team yang menyediakan fitur-fitur lebih lanjut dibandingkan dengan paket HTTP bawaan Flutter. Dio memungkinkan klien untuk melakukan berbagai operasi jaringan secara lebih fleksibel dan efisien.

### Beberapa fitur utama Dio:

- Interceptors: Dio memungkinkan pengguna untuk menambahkan interceptor ke dalam request, yang dapat digunakan untuk memodifikasi permintaan sebelum dikirim atau respons setelah diterima.
- Pemrosesan Respons: Dio mendukung penggunaan Transformer untuk memproses respons secara otomatis sesuai dengan kebutuhan aplikasi, seperti mengonversi respons ke dalam format JSON atau melakukan deserialisasi objek.
- Multipart Request: Dio mendukung pengiriman data dalam bentuk multipart, yang berguna untuk mengirim file atau data dalam format yang lebih kompleks.