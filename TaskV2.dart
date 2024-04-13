import 'dart:io';

import 'bangun_datar.dart';

abstract class Bangun_Datar {
  int luas_bangun_datar;
  int keliling_bangung_datar;

  Bangun_Datar(this.keliling_bangung_datar, this.luas_bangun_datar);

  void luas();
  void keliling();
}

class BangunDatar_Persegi extends Bangun_Datar {
  int sisi;

  BangunDatar_Persegi(this.sisi):super(sisi * sisi, sisi * 4);

  @override
  void luas(){
    print("Luas Persegi adalah $luas_bangun_datar");
  }

  @override
  void keliling(){
    print("Keliling Persegi adalah $keliling_bangung_datar");
  }
}

class BangunDatar_Lingkaran extends Bangun_Datar {
  double jariJari;

  BangunDatar_Lingkaran(this.jariJari):super((2 * 3.14 * jariJari).toInt(), (3.14 * jariJari * jariJari).toInt());

  @override
  void luas(){
    print("Luas Lingkaran adalah $luas_bangun_datar");
  }

  @override
  void keliling(){
    print("Keliling Lingkaran adalah $keliling_bangung_datar");
  }
}

class BangunDatar_Segitiga extends Bangun_Datar {
  int alas_segitiga;
  int tinggi;
  int sisia, sisib, sisic;

  BangunDatar_Segitiga(this.alas_segitiga,this.tinggi, this.sisia,this.sisib, this.sisic):super( (0.5 * alas_segitiga * tinggi).toInt(), sisia + sisib + sisic);

  @override
  void luas(){
    print("Luas Segitiga adalah $luas_bangun_datar");
  }

  @override
  void keliling(){
    print("Keliling Segitiga adalah $keliling_bangung_datar");
  }
}
void main() {
  String? nama_pengguna;
  int? umur_pengguna;
  String? kampus_pengguna;
  String? jurusan_pengguna;

  print("Masukan Data Diri anda :");
  print("Masukkan nama lengkap anda :");
  nama_pengguna = stdin.readLineSync();
  print("Umur anda berapa :");
  umur_pengguna = int.parse(stdin.readLineSync().toString());
  print("Masukkan nama kampus anda :");
  kampus_pengguna = stdin.readLineSync();
  print("Masukkan nama jurusan anda :");
  jurusan_pengguna = stdin.readLineSync();
  print("\n");
  print("======================");
  print("BIODATA CR-YOUTH");
  print("======================");
  print("Nama : $nama_pengguna");
  print("Umur : $umur_pengguna");
  print("Kampus : $kampus_pengguna");
  print("Jurusan : $jurusan_pengguna");

  print("Menu Pilihan Bangun Datar");
  print("1. Persegi");
  print("2. Lingkarang");
  print("3. Segitiga");
  print("Masukan Pilihan anda :");

  int? pilihan_menu;

  pilihan_menu = int.parse(stdin.readLineSync()!);
  switch(pilihan_menu) { 
   case 1: { 
      int sisi;
      print("Masukan nilai sisi: ");
      sisi = int.parse(stdin.readLineSync()!);
      BangunDatar_Persegi persegi = BangunDatar_Persegi(sisi);
      persegi.luas();
      persegi.keliling();
   } 
   break; 
  
   case 2: { 
      double jarijari;
      print("Masukan nilai jari-jari: ");
      jarijari = double.parse(stdin.readLineSync()!);
      BangunDatar_Lingkaran lingkaran = BangunDatar_Lingkaran(jarijari);
      lingkaran.luas();
      lingkaran.keliling();
   } 
   break; 

   case 3: { 
      int alas, tinggi, sisia, sisib, sisic;
      print("Masukan nilai alas: ");
      alas = int.parse(stdin.readLineSync()!);
      print("Masukan nilai tinggi: ");
      tinggi = int.parse(stdin.readLineSync()!);
      print("Masukan nilai sisi a: ");
      sisia = int.parse(stdin.readLineSync()!);
      print("Masukan nilai sisi b: ");
      sisib = int.parse(stdin.readLineSync()!);
      print("Masukan nilai sisi c/ atau tinggi: ");
      sisic = int.parse(stdin.readLineSync()!);
      BangunDatar_Segitiga segitiga = BangunDatar_Segitiga(alas, tinggi, sisia, sisib, sisic);
      segitiga.luas();
      segitiga.keliling();
   } 
   break; 
      
   default: { 
      print("Masukan pilihan sesuai angka!"); 
   }
   break; 
} 
}