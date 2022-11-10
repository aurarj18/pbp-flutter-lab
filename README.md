# Stateless Widget dan Stateful Widget
- Stateless widget adalah widget yang tidak bisa mengalami perubahan karena adanya perubahan nilai dari suatu state
- Stateful widget adalah widget yang bisa mengalami perubahan berdasarkan nilai dari suatu state

# Widget yang digunakan pada proyek ini
- Text                  : Untuk menampilkan text
- Align                 : Untuk memberikan alignment pada widget
- Row                   : Membuat tampilan widget menjadi horizontal
- FloatingActionButton : Membuat tombol plus minus
- Container             : Untuk menampung widget
- Scaffold              : Layar putih yang menjadi dasar bagi widget lainnya

# Fungsi dari setState() dan variabel yang dapat terdampak dengan fungsi tersebut
Melakukan perubahan nilai dari state yang ada pada stateful widget

# Const dan Final
- Const adalah deklarasi variabel immutable dan ketika akan di complie, nilainya harus sudah diketahui
- Final adalah deklarasi variabel immutable dan ketika akan di compile, nilainya boleh sudah atau belum diketahui, tetapi harus sudah diketahui ketika runtime

# Cara Implementasi
1. Membuat flutter App bernama `counter_7`
2. Membuat tombol + dan - dengan FloatingActionButton
3. Membuat tampilan counter bernilai ganjil menjadi biru, dan counter bernilai genap mejadi merah
4. Membuat function _decrementCounter()
5. Membuat conditional ketika tombol ditekan
6. Menyembunyikan/menghilangkan tombol - apabila counter bernilai 0


