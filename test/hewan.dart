// dibuat untuk secara  general -> parent
class Hewan{
  String kategori; // mamalia, ternak
  String nama; // kucinng, kambing, ikan, BURUNG
  late int _berat; //dalam kg -> sifatnya wajib ada datanya

  


  Hewan({
    required this.nama,
    required int berat, 
    required this.kategori,
    
  }) {
    _berat = berat;
  }

  //metode

  get berat => _berat;

  set makan(int beratMakan) {
    _berat = _berat + beratMakan;
  }
}
