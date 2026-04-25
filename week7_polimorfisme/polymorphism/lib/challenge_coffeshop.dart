abstract class Menu{
  String nama = '';
  int hargaPasar = 0;

  Menu(this.nama, this.hargaPasar);

  hitungHarga(){}
}

class Kopi extends Menu{
  Kopi(String nama, int hargaPasar): super(nama, hargaPasar);

  @override
  hitungHarga() => hargaPasar + 3000; 
}

class Makanan extends Menu{
  Makanan(String nama, int hargaPasar): super(nama, hargaPasar);
  @override
  hitungHarga() => hargaPasar; 
}

class Tagihan{
  List<Menu> daftarPesanan = [];
  Tagihan([List<Menu>? pesanan]) {
    if (pesanan != null) {
      daftarPesanan = pesanan;
    }
  }

  Tagihan operator +(Tagihan mejaLain) {
    return Tagihan([...this.daftarPesanan, ...mejaLain.daftarPesanan]);
  }
}


void main(){

}
