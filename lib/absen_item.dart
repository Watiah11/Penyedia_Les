import 'package:flutter/material.dart';
import 'package:penyedia_les/views/backgorund.dart';
import '../widgets/daftar_hadir.dart';
import '../widgets/riwayat_kehadiran.dart';

class AbsenItem extends StatefulWidget {
  const AbsenItem({super.key});

  @override
  State<AbsenItem> createState() => _AbsenItemState();
}

class _AbsenItemState extends State<AbsenItem>
    with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            controller: tabC,
            tabs: [
              Tab(text: "Daftar Hadir"),
              Tab(text: "Riwayat Kehadiran"),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabC,
          children: [
            DaftarHadir(),
            RiwayatKehadiran(),
          ],
        ),
      ),
    );
  }
}
