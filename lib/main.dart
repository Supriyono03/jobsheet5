import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MahasiswaList(),
    );
  }
}

class Mahasiswa {
  final String nim;
  final String nama;

  Mahasiswa(this.nim, this.nama);
}

class MahasiswaList extends StatelessWidget {
  final List<Mahasiswa> mahasiswa = [
    Mahasiswa('NIM STI202102217', 'RAKHMA NUR CHASANAH'),
    Mahasiswa('NIM STI202102221', 'RAYHAN RAFIUD DAROJAT'),
    Mahasiswa('NIM STI202102222', 'SUPRIYONO'),
    Mahasiswa('NIM STI202102224', 'INNAYAH NUR FAUZIAH'),
    Mahasiswa('NIM STI202102226', 'RESTA AMALIA YULIANI'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: mahasiswa[index].nama == 'SUPRIYONO' ? Colors.green : null,
            title: Text(
              mahasiswa[index].nama,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
            subtitle: Text(mahasiswa[index].nim),
          );
        },
      ),
    );
  }
}
