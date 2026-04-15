import 'dart:io';

void main(List<String> arguments) {
  int queue = 1;
  int screen = 60;
  print('=============================================================');
  print('No. Antrian - $queue');
  print('-'*screen);
  print('                      KOPI KENANGAN');
  print('                      081234567890');
  print('-'*screen);
  print('Daftar Menu :');
  Map <String, int> list_menu = {
    'Americano' : 18000,
    'Cappucino' : 25000,
    'Latte' : 25000,
    'Espresso' : 20000,
    'Kopi Kenangan Mantan' : 22000,
    'Kopi Hitam' : 15000
    };

    for(int i = 0; i < list_menu.length; i++){
      print('> ${list_menu.keys.elementAt(i).padRight(39)}Rp. ${list_menu.values.elementAt(i)}');
    }

  print('-'*screen);
  List<String> pesanan = [];
  List<int> jumlah = [];
  int total = 0;

  dynamic order_list = [];
  dynamic order_qty = [];

  while(true){
    stdout.write('Pesanan nama menu (ketik "Selesai")'.padRight(40)+': ');
    String? order = stdin.readLineSync();
    if (list_menu.containsKey(order)){
      stdout.write('Jumlah pesanan'.padRight(40)+': ');
      int? qty = int.parse(stdin.readLineSync()!);
      order_list.add(order);
      order_qty.add(qty);
    }
    else if (order == 'Selesai'){
      break;
    }
    else{
      print('[i] Menu tidak tersedia');
    }
   }
    print('-'*screen);
    print('                      DETAIL PESANAN');
    print('-'*screen);

    int harga = 0; 
    for(int i = 0; i < order_list.length; i++){
      int? harga_menu = list_menu[order_list[i]];
      int? qty = order_qty[i];
      int? total_harga = harga_menu! * qty!;
      harga += total_harga;
      print('${(qty.toString()+'x').padRight(5)} ${order_list[i].padRight(35)}Rp. $total_harga');
    }
    print('Total Harga'.padRight(40)+' Rp. $harga');
    print('='*screen);
    double ppn = 0.11;
    var total_ppn = (harga * ppn).toInt(); 
    print('PPN 11%'.padRight(40)+' Rp. ${total_ppn}');
    print('Total Harga'.padRight(40)+' Rp. ${harga+total_ppn}');
    print('-'*screen);
    print('Password Wifi: orderdulu');
    print('-'*screen);
    print('             Terimakasih atas kunjungan anda');
    print('-'*screen);
}
