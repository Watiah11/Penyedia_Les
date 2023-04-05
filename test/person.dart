class Person {
  String? _nama; // null check

  // constructor
  Person(this._nama);

  // geter
  String get nama => _nama!; // bang operator

  // setter
  set nama(String nama) => _nama = nama;
}
