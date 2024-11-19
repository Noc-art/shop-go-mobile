# Shop Go

A new Flutter project.

## Tugas 7 Pertanyaan
1.  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Definisi:
- Stateless widget adalah widget yang tidak memiliki keadaan yang bisa berubah. Sifat dan tampilan widget ini tidak akan berubah selama widget ada dalam tree.
- Stateful widget adalah widget yang dapat memiliki keadaan yang bisa berubah. Widget ini bisa memperbarui tampilan dan keadaan berdasarkan interaksi pengguna atau perubahan data.

Perbedaan Stateless dan Stateful widget:
- Stateless widget adalah widget yang tidak memiliki keadaan yang bisa berubah. Sedangkan, Stateful widget adalah widget yang dapat memiliki keadaan yang bisa berubah.
- Stateful widget membutuhkan dua kelas, yaitu kelas utama yang mewarisi StatefulWidget dan kelas status yang mewarisi State, sementara Stateless widget hanya membutuhkan kelas yang mewarisi StatelessWidge
- Stateful widget dapat dipanggil kembali untuk memperbarui tampilan ketika ada perubahan keadaan. Sedangkan, Stateless widget tidak.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- Scaffold: Widget ini menyediakan struktur dasar halaman, yang mencakup AppBar, body, drawer, dan bottom navigation bar untuk navigasi yang lebih baik.
- AppBar: Merupakan bagian atas halaman yang berfungsi untuk menampilkan judul aplikasi, memberikan identitas pada tampilan.
- Padding: Digunakan untuk menambahkan ruang di sekitar widget di dalam body, sehingga tampilan menjadi lebih teratur dan nyaman dilihat.
- Column: Widget ini menyusun widget lain secara vertikal, memungkinkan pengaturan elemen dalam satu kolom.
- Row: Sebaliknya, Row mengatur widget secara horizontal, ideal untuk menyusun elemen dalam satu baris.
- GridView: Menampilkan widget dalam format grid, berguna untuk menampilkan banyak item secara rapi dan terorganisir.
- Card: Memberikan tampilan yang menarik dengan efek bayangan di belakang widget, menciptakan kedalaman dan fokus visual.
- InkWell: Menangani interaksi sentuhan dari pengguna, memungkinkan mereka untuk menekan atau mengklik widget dengan respons visual.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

setState() digunakan dalam Stateful widget untuk memberi tahu framework bahwa telah terjadi perubahan pada keadaan internal yang memerlukan pembaruan tampilan widget.
Ketika setState() dipanggil, semua variabel yang terlibat dalam proses rendering widget yang memanggil setState() akan diperbarui.

4. Jelaskan perbedaan antara const dengan final.
- const digunakan untuk mendeklarasikan variabel yang nilainya tidak akan pernah berubah dan sudah ditentukan saat kompilasi. Contoh: const String name = 'Nevin';
- final digunakan untuk mendeklarasikan variabel yang nilainya hanya dapat diatur sekali, tetapi bisa ditentukan pada saat runtime. Contoh: final String name = getName();

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
- memilih widget dan state yang diperlukan untuk tampilan antarmuka berdasarkan kebutuhan aplikasi seperti GridView, Card, dll.
- menyusun layout sesuai desain yang diinginkan.
- menyimpan data yang diperlukan dalam variabel seperti nama, npm, kelas dan menampilkannya di dalam widget.
- Mengimplementasikan widget InkWell untuk memberikan respons terhadap tindakan pengguna, seperti mengklik tombol atau kartu.

## Tugas 8 Pertanyaan
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Kegunaan: mendefinisikan objek-objek yang bersifat immutable dan dapat diinstansiasi pada waktu kompilasi (compile-time constants).
Keuntungan:
- const memungkinkan Flutter untuk membuat satu instance saja dari widget tersebut dan menggunakannya berulang kali
- Performa lebih baik karena widget dengan const tidak perlu direbuild saat aplikasi menjalankan build method
Kapan menggunakan const:
- Gunakan const saat sebuah widget atau objek bersifat tetap (tidak akan diubah).
- Jangan gunakan const pada objek atau widget yang akan mengalami perubahan state atau parameter.

2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
- Column adalah widget yang menampilkan anak-anaknya dalam urutan vertikal.
<pre>
  <code>
  Column(
  children: [
    Text('Ayam 1'),
    Text('Ayam 2'),
    Text('Koala 3'),
  ],
)
  </code>
</pre>
- Row adalah widget yang menampilkan anak-anaknya dalam urutan horizontal.
<pre>
  <code>
  Row(
    children: [
      Icon(Icons.star),
      Text('Rating: 5'),
    ],
  )
  </code>
</pre>

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Yang digunakan pada tugas ini
- TextFormField = Elemen ini digunakan untuk menerima input teks dari pengguna

Yang tidak digunakan pada tugas ini
- DropdownButton = Elemen ini berfungsi sebagai daftar pilihan (drop-down menu) yang memungkinkan pengguna memilih satu opsi dari beberapa pilihan yang tersedia.
- Check box = Elemen ini memungkinkan pengguna untuk memilih satu atau lebih opsi dari sejumlah pilihan yang bersifat biner (ya atau tidak). 
- Radio Button = Elemen radio mirip dengan checkbox, namun hanya memungkinkan pengguna memilih satu opsi dari sekelompok opsi. 

4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Pengaturan tema dalam Flutter dilakukan menggunakan ThemeData pada widget MaterialApp memungkinkan kita menciptakan tampilan yang konsisten di seluruh aplikasi. ThemeData adalah kelas yang menyediakan konfigurasi warna, gaya teks, bentuk tombol, ikon, dan elemen UI lainnya yang bisa diterapkan secara global, sehingga setiap komponen otomatis mengikuti gaya yang ditentukan.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Navigator bekerja seperti tumpukan (stack), di mana halaman yang terbaru ditempatkan di atas halaman sebelumnya. Kita dapat menambah atau menghapus halaman dari stack dengan metode push dan pop.
- push: Menambahkan halaman baru ke atas stack. Halaman sebelumnya tetap ada di memori, sehingga kita bisa kembali ke sana menggunakan pop.
- pop: Menghapus halaman yang sedang ditampilkan dari stack dan kembali ke halaman sebelumnya.
- pushReplacement: Mengganti halaman saat ini dengan halaman baru tanpa menyimpan halaman sebelumnya di stack, sehingga pengguna tidak dapat kembali ke halaman lama.

Named Routes juga dapat digunakan jika aplikasi memiliki banyak halaman dan ingin manajemen navigasi yang lebih terorganisir, sehingga lebih mudah diatur, terutama ketika aplikasi bertambah besar.

## Tugas 9 Pertanyaan

1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu? </br>
<p>
Seperti yang kita tahu, bahwa struktur dan tipe data yang disimpan diserver menjadi hal yang penting untuk diketahui, maka dari itu struktur dan tipe data ini kita implementasikan dalam bentuk model. Memang membuat model bukanlah suatu keharusan namun <b>sangat disarankan</b> karena deklarasi struktur dan validasi data yang jelas. Hal ini memudahkan developer untuk mengelola data tersebut. </br>

Jika kita tidak membuat model, tidak akan selalu memunculkan error namun seringkali adanya kasus ketidaksuaian format data sehingga kita kesulitan dalam memvalidasi data karema seiring waktu struktur data terus berganti namun tidak ada acuan struktur data yang pasti, sehingga skalabilitas program pun menjadi menurun. </br></p>

2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini </br>
<p>
HTTP merupakan library yang digunakan untuk melakukan komunikasi antara HTTP dengan server dimana terjadi pengiriman dan penerimaan data melalui API. Integrasi antara backend dan flutter  terjadi dengan menggunakan library HTTP untuk mengakses data, mengirim data atau operasi lain yang memerlukan koneksi internet. </br>
</p>

3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter </br>
<p>
CookieRequest adalah class untuk menangani sesi pengguna berdasarkan cookie untuk komunikasi aplikasi dan server contohnya berupa otentikasi, status login, dll. CookieRequest sendiri memiliki beberapa fungsi utama diantaranya yaitu, menyimpan cookie, mengotomisasi sesi login, mendukung otentikasi dan autorisasi serta membantu meringankan beban kerja server karena cookie sebelumnya sudah pernah ada di server tinggal dipanggil dengan CookieRequest saja sehingga server bisa berjalan dengan lebih cepat dan efisien. </br>
</p>

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter. </br>
<p>
a. Data diambil melalui widget input seperti TextField, TextFormField, dll yang kemudian divalidasi dengan beberapa kriteria tertentu seperti panjang karakter, dll sebelum dikirim ke server. </br>
b. Setelah data tervalidasi, data akan dikirimkan ke server menggunakan HTTP Request dan format data akan berubah menjadi format JSON apabila ditambahkan penggunaan dart::convert </br>
c. Di Backend terjadi penerimaan data dan server akan mengirimkan respon berupa kode berhasil seperti 200 atau kode gagal seperti 400 atau 500</br>
d. Respon dari server diubah(deserialisasi) dari JSON menjadi objek dart agar bisa diimplementasikan di aplikasi
e. State akan menerima data baru dari server yang kemudian akan ditampilkan pada UI aplikasi. </br>
</p>

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter. </br>
<p>
a. Lakukan registrasi di aplikasi flutter jika sebelumnya anda belum memiliki akun, data yang telah diinput akan divalidasi secara lokal di server lokal anda yang kemudian akan dikirimkan ke server django dengan method POST. Server akan memproses user dan memberikan respon terkait gagal atau berhasil proses ini.</br>
b. Setelah register berhasil, anda dapat melakukan login akun sesuai dengan username dan password yang anda daftarkan di register yang selanjutnya akan divalidasi secara lokal di server anda kemudian dikirimkan lagi ke server untuk dicocokkan datanya. Jika berhasil, server akan memberikan token/session di flutter dan pengguna akan masuk ke menu utama</br>
c. Setelah anda berhasil masuk ke menu utama akan tampil berbagai data aplikasi anda dan jika sudah selesai, anda dapat melakukan logout dengan mengirimkan request logout ke django dan aplikasi akan di navigasikan kembali ke keluar dari aplikasi atau pun ke halaman login sesuai dengan ketentuan yang anda tetapkan pada kode anda.
</p>


6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial). </br>
<p>
a. Tambahkan fitur autentikasi di aplikasi flutter yang sebelumnya dibuat </br>
b. Lakukan integrasi data autentikasi dengan CookieRequest </br>
c. Tampilkan data produk pada halaman list produk </br>
d. Tambahkan design card di setiap produk yang nantinya bisa di klik untuk menampilkan data detail produk tersebut dan tambahkan button kembali ke list produk yang ada. </br>
e. Buat autentikasi logout untuk proyek flutter. 
</p>
