import 'dart:io';

class Mahasiswa_Telkom {
  String nama;
  int NIM;
  double nilaiUTS;
  double nilaiUAS;
  double nilaiTUGAS;
  
  Mahasiswa_Telkom(this.nama, this.NIM, this.nilaiUTS, this.nilaiUAS, this.nilaiTUGAS);

}

List<Mahasiswa_Telkom> dataMahasiswa = [];

// fungsi tambah data mahasiswa
void addMahasiswaNew() {
  print("Masukan NAMA mahasiswa:");
  String nama = stdin.readLineSync()!;
  print("Masukan NIM mahasiswa:");
  int NIM = int.parse(stdin.readLineSync().toString());
  print("Masukan Nilai UTS mahasiswa:");
  double nilaiUTS = double.parse(stdin.readLineSync()!);
  print("Masukan Nilai UAS mahasiswa:");
  double nilaiUAS = double.parse(stdin.readLineSync()!);
  print("Masukan Nilai TUGAS mahasiswa:");
  double nilaiTUGAS = double.parse(stdin.readLineSync()!);

  Mahasiswa_Telkom dataNewMahasiswa = Mahasiswa_Telkom(nama, NIM, nilaiUTS, nilaiUAS, nilaiTUGAS);
  dataMahasiswa.add(dataNewMahasiswa);
  print("Data Mahasiswa Berhasil Ditambahkan !! Thanks");
}

// fungsi menu 
void main() {
  while (true) {
    print("==== MASUKAN DATA ADMINISTRASI NILAI | TEL-U | MBTI ====");
    print("1. Tambah Data Mahasiswa");
    print("2. Lihat Data Mahasiswa");
    print("3. Hitung Nilai Akhir");
    print("4. Hapus Data Mahasiswa");
    print("5. Keluar Program");
    print("Masukan Pilihan anda(angka):");

    int pilihan_menu = int.parse(stdin.readLineSync()!);
    print("");
    switch(pilihan_menu) {
      case 1: { 
          addMahasiswaNew();
      } 
      break; 
      
      case 2: { 
          
      } 
      break; 

      case 3: { 
          
      } 
      break; 

      case 4: { 
          
      } 
      break; 

      case 5: { 
        print("Keluar Program.");
        return;
      } 
      default: { 
          print("Masukan pilihan sesuai angka!"); 
      }
      break; 
    }
  }
}