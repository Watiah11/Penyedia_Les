import 'package:flutter/material.dart';

class jadwal extends StatelessWidget {
  const jadwal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Masuk"),
      ),
      body: Column(
        children: [
          DataTable(
            columnSpacing: 20,
          horizontalMargin: 20,
            columns: [
            DataColumn(label: Text("No")),
            DataColumn(label: Text("Hari")),
            DataColumn(label: Text("Waktu")),
            DataColumn(label: Text("Nama Siswa")),
            DataColumn(label: Text("Durasi")),
          ], rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text("01")),
              DataCell(Text("Senin")),
              DataCell(Text("12.30 - 13.00")),
              DataCell(Text("Jasmine")),
              DataCell(Text("30 mnt")),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text("02")),
              DataCell(Text("Selasa")),
              DataCell(Text("12.30 - 13.00")),
              DataCell(Text("Mera")),
              DataCell(Text("30 mnt")),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text("03")),
              DataCell(Text("Rabu")),
              DataCell(Text("15.30 - 16.30")),
              DataCell(Text("Naura")),
              DataCell(Text("60 mnt")),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text("04")),
              DataCell(Text("Kamis")),
              DataCell(Text("17.30 - 18.00")),
              DataCell(Text("zya")),
              DataCell(Text("30 mnt")),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text("05")),
              DataCell(Text("Jum'at")),
              DataCell(Text("12.30 - 13.00")),
              DataCell(Text("jasmine")),
              DataCell(Text("30 mnt")),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text("06")),
              DataCell(Text("Senin")),
              DataCell(Text("14.30 - 15.00")),
              DataCell(Text("Alex")),
              DataCell(Text("30 mnt")),
            ]),
          ]
          )
        ],
      ),
    );
  }
}