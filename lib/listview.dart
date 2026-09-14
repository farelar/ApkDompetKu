import 'package:flutter/material.dart';

class HalListview extends StatelessWidget {
  const HalListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview", style: TextStyle(color: Colors.white)),
        // titleTextStyle: Color(white),
        backgroundColor: Colors.purple,
      ),

      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  ListViewTemplate(
                    urlgambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqyGgp3OPYLO65BGaYVkACUkWkSghr7bs9AbeycXjMEw&s=10",
                    judul: "Radio",
                    deskripsi: "teknologi komunikasi yang digunakan untuk mengirimkan sinyal suara atau informasi jarak jauh menggunakan gelombang elektromagnetik tanpa memerlukan kabel",
                  ),
                  ListViewTemplate(
                    urlgambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPmB6SO6h14RE6A3jQUM4vqUWiCOpVo8KW-oHJLPFoXfsbtQwG9U8CpQw&s=10",
                    judul: "Laptop",
                    deskripsi: "komputer pribadi portabel yang berukuran kecil dan ringan sehingga mudah dibawa serta digunakan di berbagai tempat",
                  ),
                  ListViewTemplate(
                    urlgambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFH6c1tR2aTOuAdD6O01DyJVDWEqtStMKE9V-vIoecFxRKY7Htxr5VX_I&s=10",
                    judul: "Smartphone",
                    deskripsi: "perangkat komunikasi genggam yang memiliki fungsi serbaguna seperti komputer mini, dilengkapi dengan sistem operasi canggih dan layar sentuh.",
                  ),
                  ListViewTemplate(
                    urlgambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlFW2Nb4r4Mmx040V5S2eNNx2AiQoCJ3lDLTHVKLhqEvRt7g9WmkmQmsA&s=10",
                    judul: "Keyboard",
                    deskripsi: "hardware) berbentuk papan yang dilengkapi dengan berbagai tombol untuk memasukkan data, teks, angka, simbol, atau perintah ke dalam komputer atau perangkat digital lainnya",
                  ),
                  ListViewTemplate(
                    urlgambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7NYiAK5VFQp7vD8rw0oEinp7WHH2XXv7_uWj6dU7KGg&s=10",
                    judul: "Graphic Card",
                    deskripsi: "perangkat keras komputer yang berfungsi untuk mengolah data visual dan menampilkan gambar, video, atau animasi ke layar monitor",
                  ),
                  ListViewTemplate(
                    urlgambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlFW2Nb4r4Mmx040V5S2eNNx2AiQoCJ3lDLTHVKLhqEvRt7g9WmkmQmsA&s=10",
                    judul: "Keyboard",
                    deskripsi: "Keyboard aula f75 dengan feel clicky dengna harga yang murah bisa dapat diskon hingga 70% pada hari ini",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewTemplate extends StatelessWidget {
  const ListViewTemplate({
    super.key,
    required this.urlgambar,
    required this.judul,
    required this.deskripsi,
  });

  final String urlgambar;
  final String judul;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(image: NetworkImage(urlgambar), width: 100.0),
          Padding(padding: EdgeInsets.all(20.0)),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Biar teks rata kiri
                children: <Widget>[
                  Text(
                    judul,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ), // Jarak tipis antara judul dan deskripsi
                  Text(
                    deskripsi,
                    style: const TextStyle(fontSize: 13.0, color: Colors.grey),
                    softWrap: true, // Biar otomatis turun ke bawah
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //   child: Center(
          //     child: Column(
          //       children: <Widget>[
          //         Text(judul, style: TextStyle(fontWeight: FontWeight.bold)),
          //         Text(deskripsi),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
