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


