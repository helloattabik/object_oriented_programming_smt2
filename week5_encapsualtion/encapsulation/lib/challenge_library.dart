class Buku{
  String _isbn = '';
  String _judul = '';
  String _kategori = '';
  int _stok = 0;

  Buku(this._isbn, this._judul, this._kategori, this._stok);

  String get isbn => _isbn;
  String get judul => _judul;
  String get kategori => _kategori;
  int get stok => _stok;
  
  List kategoriValue = ['Fiksi', 'Sains', 'Sejarah'];

  set kategori(String value){
    if(kategoriValue.contains(value)){
      _kategori = value;
      print('Kategori [$_judul] diubah menjadi [$value]');
    }
    else{
      print('Error: Kategori tidak valid!');
    }
    }

   set stok(int value) => (value > 0) ? _stok = value : print('Error : Stok tidak boleh negatif!');

   @override 
   String toString() => '[$_isbn] $_judul ($_kategori) - Sisa stok: $_stok';

   @override
  bool operator ==(Object other) => other is Buku && other._isbn == this._isbn;

  @override
  int get hashCode => _isbn.hashCode;
}

  class Perpustakaan{
    Set<Buku> _koleksi = {};

    void tambahkanBuku(Buku value){
      if (_koleksi.contains(value)){
        print('Gagal: Buku dengan ISBN ${value._isbn} sudah ada di koleksi');
      }
      else{
        _koleksi.add(value);
        print('Buku ${value._judul} berhasil ditambahkan ke koleksi');
      }
    }

    pinjamBuku(Buku pinjam){
      if(_koleksi.contains(pinjam)){
        if(pinjam._stok > 0) return pinjam._stok -= 1;
        if(pinjam._stok == 0) return print('gagal meminjam: Stok buku ${pinjam._judul} sedang habis');
      }
      print('Gagal: Buku tidak ditemukan di perpustakaan');
      }

      tampilkanKoleksi(){
        print('Total judul Buku: ${_koleksi.length}');
        for(var i in _koleksi) print(i);
      }
  }

void main(){
  Perpustakaan perpus = Perpustakaan();
  Buku buku1 = Buku('111', 'Bumi Manusia', 'Fiksi', 1);
  Buku buku2 = Buku('112', 'Kosmos', 'Sains', 2);
  Buku buku3 = Buku('113', 'Sapiens', 'Sejarah', 1);
  buku1.kategori = 'Komik';
  buku2.stok = -5;
  perpus.tambahkanBuku(buku1);
  perpus.tambahkanBuku(buku2);
  perpus.tambahkanBuku(buku3);
  Buku buku_impostor = Buku('111', 'Judul', 'Kategori', 1);
  perpus.tambahkanBuku(buku_impostor);
  perpus.pinjamBuku(buku1);
  perpus.pinjamBuku(buku1);
  perpus.tampilkanKoleksi();
}