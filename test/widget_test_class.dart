import './hewan.dart';
import './kucing.dart';
import './Ikan.dart';
import './Burung.dart';
import './musang.dart';

void main() {
  Kucing hewan1 = Kucing(jumlahKaki: 4, berat: 10);
  hewan1.setlari = 5;
  print("HEWAN 1 : ${hewan1.kategori} - ${hewan1.nama}");
  print("${hewan1.berat}kg");
  print("Berlari : ${hewan1.lari} m/s");
  print("${hewan1.jumlahKaki}KAKI");
  print("-------- MAKAN 2 KG --------");
  hewan1.makan = 1;
  print("SEKARANG ${hewan1.berat}kg");

  print("\n===================================\n");

  Ikan hewan2 = Ikan(berat: 2);
  hewan2.setrenang = 3;
  print("HEWAN 2 : ${hewan2.kategori} - ${hewan2.nama}");
  print("${hewan2.berat}kg");
  print("Berenang : ${hewan2.renang} m/s");
  print("-------- MAKAN 1 KG --------");
  hewan2.makan = 1;
  print("SEKARANG ${hewan2.berat}kg");

  print("\n===================================\n");

  Burung hewan3 = Burung(jumlahKaki: 2, berat: 6);
  hewan3.setterbang = 10;
  print("HEWAN 3 : ${hewan3.kategori} - ${hewan3.nama}");
  print("${hewan3.berat}kg");
  print("Berenang : ${hewan3.terbang} m/s");
  print("${hewan3.jumlahKaki}KAKI");
  print("-------- MAKAN 5 KG --------");
  hewan3.makan = 5;
  print("SEKARANG ${hewan3.berat}kg");

  print("\n===================================\n");

  Musang hewan4 = Musang(jumlahKaki: 4, berat: 10);
  print("HEWAN 4 : ${hewan4.kategori} - ${hewan4.nama}");
  print("${hewan4.berat}kg");
  print("Berlari : ${hewan4.lari} m/s");
  print("Berlari : ${hewan4.renang} m/s");
  print("${hewan4.jumlahKaki}KAKI");
  print("-------- MAKAN 2 KG --------");
  hewan1.makan = 1;
  print("SEKARANG ${hewan4.berat}kg");
}
