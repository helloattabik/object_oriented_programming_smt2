class Produk{
  static int totalProduk = 0;
  String nama = '';
  double harga = 0;
  String kategori = 'Umum';

  Produk(this.nama, this.harga){
    totalProduk++;
  }

  void tampilkanInfo(){
    print('${'Nama'.padRight(20)}: $nama');
    print('${'Kategori'.padRight(20)}: $kategori');
    print('${'Harga'.padRight(20)}: $harga');
  }
  
  @override
  String toString() => '$nama';

}


class Laptop extends Produk{
  String processor = '';
  Laptop(String nama, double harga, this.processor):super(nama, harga);

  @override
  String kategori = 'Komputer';

  @override
  void tampilkanInfo() {
    super.tampilkanInfo();
    print('${'Processor'.padRight(20)}: $processor');
  }
}

class Smartphone extends Produk{
  int kapasitasBaterai = 0;
  Smartphone(String nama, double harga, this.kapasitasBaterai):super(nama, harga);

  @override
  String kategori = 'Gadget';
  
  @override
  void tampilkanInfo() {
    super.tampilkanInfo();
    print('${'Baterai'.padRight(20)}: $kapasitasBaterai');
  }
}


class kalkulatorPajak{
  static double hitungPajak(double harga) => harga + (harga * 0.1);
}


extension LabelHarga on Produk{
  StatusHarga(){
    if(harga>10000000) return 'Premium';
    return 'Standar';
  }
}

void main(List<String> args) {
  Laptop laptop1 =Laptop('Lenovo Yoga Slim 6i', 15500000, '13th Gen Intel(R) Core(TM) i7-13700H');
  Smartphone smartphone1 = Smartphone('Vivo Y27s', 2700000, 5000);

  print('Pajak ${laptop1} : ${kalkulatorPajak.hitungPajak(laptop1.harga)}');
  print('Pajak ${smartphone1} : ${kalkulatorPajak.hitungPajak(smartphone1.harga)}');

  print('Status Harga $laptop1: ${laptop1.StatusHarga()}');
  print('Status Harga $smartphone1: ${smartphone1.StatusHarga()}');
  
  print('Total Produk : ${Produk.totalProduk}');
}
