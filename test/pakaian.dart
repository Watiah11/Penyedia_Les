class Pakaian {
  // ATRIBUT
  // private -> ( _ )
  String? jenis;
  String? warna;
  String? _ukuran;

// CONSTRUCTOR
// Positional arguments
  // Pakaian(String jenisNya, String warnaNya) {
  //   jenis = jenisNya;
  //   warna = warnaNya;
  // }
// name argument
  //Pakaian({String? jenisNya, String? warnaNya}) {
  // jenis = jenisNya;
  //  warna = warnaNya;
  //}
  //constructor -> direct positional argument
  //Pakaian(this.jenis, this.warna);
  //constructor -> direct named constructor
  Pakaian({this.jenis, this.warna, String? ukuran}) {
    _ukuran = ukuran;
  }

  //METHOD
  void gantiUkuran(String? newUkuran) {
    _ukuran = newUkuran;
  }

  // fungsi get biasa
  //String? ukuran() {
  // return _ukuran;
  //}

  //getter
  String? get ukuran {
    return _ukuran;
  }

  // seter
  set setukuran(String? newUkuran) {
    _ukuran = newUkuran;
  }
}
