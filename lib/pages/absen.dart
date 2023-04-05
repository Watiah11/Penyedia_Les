import 'package:flutter/material.dart';
import '../items/absen_item.dart';

class AbsenPage extends StatelessWidget {
  const AbsenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFADD8E6),
        centerTitle: true,
        title: Text(
          "Absensi Siswa Les",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: AbsenItem(),
    );
  }
}
