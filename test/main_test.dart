import 'dart:io';

import 'dosen.dart';
import 'mahasiswa.dart';
import 'wali.dart';

void main() {
  print("Masukkan nim: ");
  String? nim = stdin.readLineSync();

  int? nilai = int.parse(stdin.readLineSync()!);
  Mahasiswa mhs1 = Mahasiswa("001", "Fulan");
  Mahasiswa mhs2 = Mahasiswa("002", "Fulanah");
  Mahasiswa mhs3 = Mahasiswa("003", "Halim");
  Mahasiswa mhs4 = Mahasiswa("004", "Fathonah");
  Dosen dsn1 = Dosen("01", "Tabligh");
  Dosen dsn2 = Dosen("02", "Amanah");

  Wali wali2a = Wali(dsn1);
  wali2a.addMahasiswa(mhs1);
  wali2a.addMahasiswa(mhs2);
  wali2a.showWali();

  // print("DOSEN");
  // print("${dsn1.nidn} - ${dsn1.nama}\n");

  //  print("MAHASISWA");
  // print("${mhs1.nim} - ${mhs1.nama}");
  // print("${mhs2.nim} - ${mhs2.nama}");
  // print("${mhs3.nim} - ${mhs3.nama}");
  // print("${mhs4.nim} - ${mhs4.nama}");
}
