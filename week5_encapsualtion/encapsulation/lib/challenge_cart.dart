class CartItem{
  String productId = '';
  String name = '';
  int quantity = 0;

  CartItem(this.productId, this.name, this.quantity);

  @override
  String toString() {
    return '[$productId] $name (Jumlah: $quantity)';
  }

  @override
  bool operator ==(Object other) => ((other is CartItem) && (this.productId == other.productId));

  @override
  int get hashCode => productId.hashCode;
}

void main() {
  // 1. User memasukkan barang pertama ke keranjang
  CartItem item1 = CartItem('P001', 'Keyboard Mekanikal', 1);
  
  // 2. User memasukkan barang yang sama lagi tapi jumlahnya beda
  CartItem item2 = CartItem('P001', 'Keyboard Mekanikal', 2);
  
  // 3. User memasukkan barang yang benar-benar berbeda
  CartItem item3 = CartItem('P002', 'Mouse Wireless', 1);

  print('--- TEST TOSTRING ---');
  print(item1);
  print(item3);

  print('\n--- TEST OPERATOR == ---');
  // Ini harus menghasilkan TRUE jika override Anda benar
  print('Apakah item1 SAMA DENGAN item2? : ${item1 == item2}');
  
  // Ini harus menghasilkan FALSE
  print('Apakah item1 SAMA DENGAN item3? : ${item1 == item3}');

  print('\n--- TEST HASHCODE & SET ---');
  // Struktur data Set secara otomatis menolak barang ganda (duplikat)
  // Ia menggunakan hashCode dan == untuk mengecek kegandaan.
  Set<CartItem> keranjang = {item1, item2, item3};
  
  // Jika override Anda benar, item2 akan ditolak masuk oleh Set 
  // karena dianggap sama dengan item1. Sehingga isi keranjang hanya 2.
  print('Jumlah barang unik di keranjang : ${keranjang.length}'); 
}