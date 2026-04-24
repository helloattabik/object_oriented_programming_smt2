class Item {
  String nama;
  String _kode;
  int _jumlah;

  Item(this.nama, this._kode, this._jumlah);

  // Getter
  int get jumlah => _jumlah;
  String get kode => _kode;

  // Setter dengan validasi
  set jumlah(int value) {
    if (value >= 0) {
      _jumlah = value;
    } else {
      print('--- [SISTEM] Gagal update stok $nama: Jumlah tidak boleh negatif! ---');
    }
  }

  // PENGGUNAAN OVERRIDE (Sangat berguna untuk melihat isi list nanti)
  @override
  String toString() {
    return '[$_kode] $nama - Stok: $_jumlah';
  }
}

void main() {
  // 1. Membuat beberapa objek barang
  Item barang1 = Item('Sabun', 'BRG01', 50);
  Item barang2 = Item('Shampoo', 'BRG02', 20);
  Item barang3 = Item('Pasta Gigi', 'BRG03', 15);

  // 2. Memasukkan objek ke dalam List (Inilah praktiknya di dunia nyata)
  List<Item> gudang = [barang1, barang2, barang3];

  print('=== ISI GUDANG SAAT INI ===');
  // Karena ada @override, kita bisa print list-nya langsung dan hasilnya rapi!
  gudang.forEach((item) => print(item));

  print('\n=== MELAKUKAN UPDATE STOK ===');
  // Mencoba update stok yang salah
  barang1.jumlah = -5; // Akan ditolak oleh Setter
  
  // Update stok yang benar
  barang2.jumlah = 100;

  print('\n=== ISI GUDANG SETELAH UPDATE ===');
  print(gudang); // Mencetak list secara horizontal (tetap rapi karena override)
}