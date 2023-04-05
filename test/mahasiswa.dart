import 'person.dart';

class Mahasiswa extends Person{
  String? _nim;

  Mahasiswa(this._nim, String? nama) : super(nama);

  String get nim => _nim!;

  set nim(String nim) => _nim = nim;
}
