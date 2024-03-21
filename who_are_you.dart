import 'dart:io';

void main() {
  String? nama;
  int? umur;
  String? kampus;
  String? jurusan;

  print("Masukkan nama lengkap anda :");
  nama = stdin.readLineSync();
  print("Umur anda berapa :");
  umur = int.parse(stdin.readLineSync().toString());
  print("Masukkan nama kampus anda :");
  kampus = stdin.readLineSync();
  print("Masukkan nama jurusan anda :");
  jurusan = stdin.readLineSync();
  print("\n");
  print("==============");
  print("Biodata CR Youth");
  print("==============");
  print("Nama : $nama");
  print("Umur : $umur");
  print("Kampus : $kampus");
  print("Jurusan : $jurusan");
}
