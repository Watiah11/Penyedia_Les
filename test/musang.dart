import 'hewan.dart';
import './mixin/renang.dart';
import './mixin/lari.dart';

class Musang extends Hewan with Renang, Lari {
  int jumlahKaki;

  Musang({required this.jumlahKaki, required int berat})
      : super(nama: "Musang", kategori: "Mamalia", berat: berat);
}
