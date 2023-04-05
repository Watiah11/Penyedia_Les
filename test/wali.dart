import 'dosen.dart';
import 'mahasiswa.dart';

class Wali {
  Dosen? _dosen;
  List<Mahasiswa> listMahasiswa = [];

  Wali(this._dosen);

  void addMahasiswa(Mahasiswa m) {
    listMahasiswa.add(m);
  }

  void showWali() {
    print("DOSEN WALI");
    print("${_dosen!.nidn} - ${_dosen!.nama}");
    print("MAHASISWA WALI");
    for (var m in listMahasiswa) {
      print("${m.nim} - ${m.nama}");
    }
  }
}
