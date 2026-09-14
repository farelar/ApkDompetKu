import 'package:flutter/material.dart';

// 1. Ubah jadi StatefulWidget
class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  // Tempat menampung data dinamis (misal: daftar riwayat transaksi)
  final List<String> daftarTransaksi = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: daftarTransaksi.isEmpty
          ? Center(
              // Kalau datanya masih kosong, tampilkan tampilan awal kamu
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.book, size: 90.0, color: Color.fromARGB(255, 150, 147, 146)),
                  const Text("Belum ada transaksi", style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 150, 147, 146))),
                ],
              ),
            )
          : ListView.builder(
              // Kalau datanya sudah ada, tampilkan pakai daftar list dinamis
              itemCount: daftarTransaksi.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.book),
                  title: Text(daftarTransaksi[index]),
                );
              },
            ),
      
      // Tombol melayang (FloatingActionButton) buat nambah data secara dinamis
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi saat tombol diklik untuk nambah data transaksi baru
          setState(() {
            daftarTransaksi.add("Transaksi ke-${daftarTransaksi.length + 1}");
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}