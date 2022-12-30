# TUGAS 7

## Stateless Widget dan Stateful Widget
- Stateless widget adalah widget yang tidak bisa mengalami perubahan karena adanya perubahan nilai dari suatu state
- Stateful widget adalah widget yang bisa mengalami perubahan berdasarkan nilai dari suatu state

## Widget yang digunakan pada proyek ini
- Text                  : Untuk menampilkan text
- Align                 : Untuk memberikan alignment pada widget
- Row                   : Membuat tampilan widget menjadi horizontal
- FloatingActionButton : Membuat tombol plus minus
- Container             : Untuk menampung widget
- Scaffold              : Layar putih yang menjadi dasar bagi widget lainnya

## Const dan Final
- Const adalah deklarasi variabel immutable dan ketika akan di complie, nilainya harus sudah diketahui
- Final adalah deklarasi variabel immutable dan ketika akan di compile, nilainya boleh sudah atau belum diketahui, tetapi harus sudah diketahui ketika runtime

## Cara Implementasi
1. Membuat flutter App bernama `counter_7`
2. Membuat tombol + dan - dengan FloatingActionButton
3. Membuat tampilan counter bernilai ganjil menjadi biru, dan counter bernilai genap mejadi merah
4. Membuat function _decrementCounter()
5. Membuat conditional ketika tombol ditekan
6. Menyembunyikan/menghilangkan tombol - apabila counter bernilai 0

# TUGAS 8

## Perbedaan Navigator.push dan Navigator.pushReplacement
- Navigator.push bekerja dengan menambahkan sebuah rute ke stack (tumpukan) Navigator
- Navigator.pushReplacement bekerja dengan mengganti rute yang sedang ditampilkan dengan push route datau halaman baru ke stack Navigator

## Widget yang digunakan di proyek kali ini
- `Drawer` : Sebagai hamburger menu untuk navigasi ke halaman berbeda
- `TextFormField` : Untuk menerima input dari user
- `Card` : Untuk menampilkan data input yang ada pada list
- `DropdownButtonFormField` : Untuk menentukan input yang diberikan adalah pemasukan atau pengeluaran
- `FloatingActionButton` : Button yang di-bind untuk menambahkan data ke dalam list

## Jenis-Jenis Event yang ada pada Flutter
- onPressed()
- onTap()
- onChanged()
- onSaved()

## Cara Kerja Navigator dalam "mengganti" Halaman dalam Aplikasi Flutter
Navigator bekerja dengan konsep Last In First Out, seperti struktur data stack. Setiap tampilan akan di push ke stack Navigator untuk ditampilkan, sehingga yang tampil adalah halaman yang paling terakhir di push (berada di posisi paling atas stack)

## Cara Implementasi
1. Membuat widget drawer untuk navigasi ke halaman lain.
2. Membuat file `form.dart` untuk menerima input dari user. TextFormField menerima input berupa Judul dan Nominal. DropdownButtonField menerima input berupa tipe pemasukan dan pengeluaran.
3. Membuat FloatingActionButton yang di-bind untuk menyimpan input dan melakukan validasi terhadap input sudah terisi benar atau belum.
4. Menambahkan input yang sudah tervalidasi ke dalam list data.
5. Membuat `data.dart` untuk menampilkan data input yang sudah disimpan.
6. Mengimport `file .dart` agar list input data dapat diakses pada `data.dart`.
7. Menampilkan data pada list dengan menggunakan builder ListView.builder().
8. Membuat Card untuk menampilkan judul, nominal, jenis budget.

# TUGAS 9
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Kita bisa melakukan pengambilan data Json tanpa membuat model terlebih dahulu, namun kita tidak bisa memastikan data JSON yang diambil mempunyai bentuk seperti yang kita inginkan. Oleh karena itu, lebih baik jika kita membuat model terlebih dahulu.

## Widget yang digunakan
- Text : Menampilkan text
- Stack : Memposisikan children relatif terhadap tepi-tepi kotak
- column : Menampung widget dan disusun secara vertikal
- SizedBox : Menampilkan box dengan ukuran tertentu
- TextSpan : Menampilkan teks yang immutable secara merentang
- Container : Menampung berbagai widget untuk menerapkan posisi, ukuran, dan properti lainnya
- FutureBuilder : Widget yang bisa membangun tampilan dirinya sendiri. 
- MainAxisAlignment : Menempatkan children sepanjang sumbu utama dalam sebuah layout flex
- Edgelnsets : Memberikan offset ke 4 arah kardinal yang bersifat immutable

## Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter
- Menambahkan depedensi http
- Melakukan GET pada data JSON yang selanjutnya dikonversikan ke dalam suatu model yang dibuat
- Data JSON ditampilkan menggunakan FutureBuilder

## Cara Implementasi Checklist
- Menambahkan depedensi http agar bisa mengambil data dari internet
- Membuat model serialisasi data JSON dari MyWatchlist
- Fetch data MyWatchlist secara asynchronous dari website, lalu serialisasi data tersebut
- Memanfaatkan data yang telah diserialisasi untuk membuat halaman yang menampilkan list dari objek-objek MyWatchlist
- Melakukan wraping setiap objek sebagai tombol dengan routing ke halaman detail watchlist
- Menampilkan atribut-atribut dari suatu objek MyWatchlist dari suatu halaman
