import 'person.dart';

class Dosen extends Person {
  String? _nidn;

  Dosen(this._nidn, String? nama) : super(nama);

  String get nidn => _nidn!;

  set nidn(String nidn) => _nidn = nidn;
}
