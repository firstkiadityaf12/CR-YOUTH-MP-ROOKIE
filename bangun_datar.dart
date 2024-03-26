abstract class BangunDatar {
  int luasBangunDatar;
  int kelilingBangunDatar;

  BangunDatar(this.luasBangunDatar, this.kelilingBangunDatar);

  void luas();
  void keliling();
}

class Persegi extends BangunDatar {
  Persegi(int luasBangunDatar, int kelilingBangunDatar)
      : super(luasBangunDatar, kelilingBangunDatar);
  @override
  void keliling() {
    print("Keliling Persegi adalah $kelilingBangunDatar cm persegi");
  }

  @override
  void luas() {
    print("Luas Persegi adalah $luasBangunDatar cm persegi");
  }
}

class Segitiga extends BangunDatar {
  Segitiga(int luasBangunDatar, int kelilingBangunDatar)
      : super(luasBangunDatar, kelilingBangunDatar);
  @override
  void keliling() {
    print("Keliling Segitiga adalah $kelilingBangunDatar cm");
  }

  @override
  void luas() {
    print("Luas Segitiga adalah $luasBangunDatar cm");
  }
}

class Lingkaran extends BangunDatar {
  Lingkaran(int luasBangunDatar, int kelilingBangunDatar)
      : super(luasBangunDatar, kelilingBangunDatar);
  @override
  void keliling() {
    print("Keliling Lingkaran adalah $kelilingBangunDatar cm");
  }

  @override
  void luas() {
    print("Luas Lingkaran adalah $luasBangunDatar cm");
  }
}

void main() {
  BangunDatar persegi = Persegi(24, 24);
  BangunDatar segitiga = Segitiga(50, 30);
  BangunDatar lingkaran = Lingkaran(60, 70);

  persegi.keliling();
  persegi.luas();
  segitiga.keliling();
  segitiga.luas();
  lingkaran.keliling();
  lingkaran.luas();
}
