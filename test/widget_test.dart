enum motor { nmax, jupiter, pcx, mio, vespa }

void main() {
  // enum -> Bool -> data cuma 2 -> kondisi true/false

  // bool isGirl = true;

  // if (isGirl == true) {
  //   print("DIA PEREMPUAN");
  // } else {
  //   print("DIA LAKI-LAKI");
  // }

  // ENUM -> Int -> bisa banyak data
  // 0 : NMAX
  // 1 : JUPITER
  // 2 : PCX
  // 3 : MIO

//enum
  var motorKita = motor.nmax;
  if (motorKita == motor.nmax) {
    print("MOTOR NMAX");
  } else if (motorKita == motor.jupiter) {
    print("MOTOR JUPITER");
  } else if (motorKita == motor.pcx) {
    print("MOTOR PCX");
  } else if (motorKita == motor.mio) {
    print("MOTOR MIO");
  } else if (motorKita == motor.vespa) {
    print("MOTOR VESPA");
  } else {
    print("TIDAK DIKETAHUI");
  }
}
