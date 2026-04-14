import 'package:proyek_kasir_251240001637/proyek_kasir_251240001637.dart' as proyek_kasir_251240001637;
import 'dart:io';

void main(List<String> arguments) {

  var brand = 'Kopi Kenangan';
  var address = 'Jl. Pemuda No.53, Potroyudan IX, Potroyudan, Kec. Jepara, Kabupaten Jepara, Jawa Tengah 59412';
  var contact = '081234567890';
  int width_screen = 60;
  

  Map<String, int> item = {
    'Espresso': 15000,
    'Americano': 20000,
    'Cappuccino': 25000,
    'Latte': 28000,
    'Mocha': 30000,
  };


  print('-'*width_screen);
  print(brand);
  print('    Jl. Pemuda No.53, Potroyudan IX, Potroyudan,');
  print(' Kec. Jepara, Kabupaten Jepara, Jawa Tengah 59412');
  print('            No. Telp: $contact');
  print('-'*width_screen);


  





}
