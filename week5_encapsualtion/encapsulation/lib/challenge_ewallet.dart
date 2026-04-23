class DompetDigital{
  int _balance = 0;
  int _amount = 0;
  int _maxLimit = 500000;

  int get balance => _balance;
  int get amount => _amount;
  int get limitTransaction => _maxLimit - _amount;

  void topUp(int nominal){
    nominal > 0 ? _balance += nominal : print('[i] Transaksi Gagal');
  }
  
  bayar(int harga){
    if (harga < 0) return print('[i] Transaksi Gagal: Harga Tidak Valid!');
    if (balance < harga) return print('[i] Transaksi Gagal: Saldo Tidak Cukup!');
    if (harga > limitTransaction) return print('[i] Transaksi Gagal: Melewati Limit Harian!');
    _balance -= harga;
    _amount +=harga;
  }

  void resetHari(){
    _amount = 0;
  }
}

void main(){

  DompetDigital dompet1 = DompetDigital();

  print('${'Saldo'.padRight(20)}: ${dompet1.balance}');
  print('${'Sisa Limit'.padRight(20)}: ${dompet1.limitTransaction}');

  dompet1.topUp(1000000);
  print('${'Saldo'.padRight(20)}: ${dompet1.balance}');
  print('${'Sisa Limit'.padRight(20)}: ${dompet1.limitTransaction}');

  dompet1.bayar(300000);
  print('${'Saldo'.padRight(20)}: ${dompet1.balance}');
  print('${'Sisa Limit'.padRight(20)}: ${dompet1.limitTransaction}');

  dompet1.bayar(250000);
  print('${'Saldo'.padRight(20)}: ${dompet1.balance}');
  print('${'Sisa Limit'.padRight(20)}: ${dompet1.limitTransaction}');

  dompet1.resetHari();
  print('${'Saldo'.padRight(20)}: ${dompet1.balance}');
  print('${'Sisa Limit'.padRight(20)}: ${dompet1.limitTransaction}');

  dompet1.bayar(250000);
  print('${'Saldo'.padRight(20)}: ${dompet1.balance}');
  print('${'Sisa Limit'.padRight(20)}: ${dompet1.limitTransaction}');

}