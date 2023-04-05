import 'package:flutter/material.dart';

class RiwayatKehadiran extends StatelessWidget {
  const RiwayatKehadiran({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> keterangan = [
      "Sakit",
      "Izin",
      "Tidak Hadir",
      "Terlambat",
    ];

    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      padding: EdgeInsets.all(16),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(5),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFADD8E6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                keterangan[index],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.navigate_next),
              ),
            ],
          ),
        );
      },
    );
  }
}
