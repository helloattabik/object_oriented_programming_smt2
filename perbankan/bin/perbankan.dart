//Nama  : Tri Misbachul Attabik
//NIM   : 251240001637
//Tema  : Sistem Layanan Bank 

// ======================================================================================
// 1. CLASS & ENCAPSULATION
// ======================================================================================
// Parent Class
abstract class Rekening {
  static List<Rekening> daftarRekening = [];
  static int indeks = 0;

  // Private Atribut
  static const String _kodeBank = '123';
  final String _nama;
  late final String _nomorRekening;
  String _jenisRekening= 'Reguler';
  String _pin = '';
  int _saldo = 0;
  int _limitHarian = 0;
  int _totalPenarikan = 0;
  
  // Constuctor
  Rekening(this._nama, this._pin, this._saldo) {
    indeks++;
    _nomorRekening = '$_kodeBank${indeks.toString().padLeft(8, '0')}';
    daftarRekening.add(this);
  }

  // Getter
  String get nama => _nama;
  String get jenisRekening => _jenisRekening;
  String get nomorRekening => _nomorRekening;
  int get saldo => _saldo;
  int get sisaLimitHarian => _limitHarian - _totalPenarikan;

  // Setter
  set pin(String pinBaru){
  // Validasi Setter: Harus tersusun dari 6 digit angka
    if(pinBaru.length == 6 && int.tryParse(pinBaru) != null){
      _pin = pinBaru;
      print('\n[BERHASIL] PIN @$nama berhasil diubah');
    }
    else{
      print('\n[GAGAL] PIN harus terdiri dari 6 angka');
    }
  }
  
  // Method: Setor Tunai
  void setorTunai(int nominal, String pin){
    if(_pin != pin){
      Tools.statusTransaksi('GAGAL', 'TARIK TUNAI', nominal, 'PIN salah', saldo, nomorRekening, nama);
    }
    else if (nominal <= 0){
      Tools.statusTransaksi('GAGAL', 'SETOR TUNAI', nominal, '(Nominal tidak sesuai)', saldo, nomorRekening, nama);
    }
    else{
      _saldo += nominal;
      Tools.statusTransaksi('BERHASIL', 'SETOR TUNAI', nominal, '', saldo, nomorRekening, nama);
    }
      
  }

  // Method: Tarik Tunai
  void tarikTunai(int nominal, String pin){
    if(_pin != pin){
      Tools.statusTransaksi('GAGAL', 'TARIK TUNAI', nominal, 'PIN salah', saldo, nomorRekening, nama);
    }
    else if(nominal <= 0){
      Tools.statusTransaksi('GAGAL', 'TARIK TUNAI', nominal, 'Nominal tidak sesuai', saldo, nomorRekening, nama);
     }
    else if(nominal > sisaLimitHarian || nominal > _saldo){
      Tools.statusTransaksi('GAGAL', 'TARIK TUNAI', nominal, 'Saldo/Limit tidak mencukupi', saldo, nomorRekening, nama);
    }
    else{
      _saldo -= nominal;
      _totalPenarikan += nominal;
      Tools.statusTransaksi('BERHASIL', 'TARIK TUNAI', nominal, '', saldo, nomorRekening, nama);
    }
  }

  // Method : Reset Limit Tarik Tunai Harian
  void resetHari(){
    _totalPenarikan = 0;
  }

  // Method : Override toString()
  @override
  String toString() {
  return '${_nama.padRight(30)} ${_nomorRekening.padRight(20)}';
  }
}
// ======================================================================================
// 2. INHERITANCE (PEWARISAN) & POLYMORPHISM
// ======================================================================================

// Child Class 1 : Reguler
class Reguler extends Rekening {
  Reguler(String nama, String pin, int saldo) : super(nama, pin, saldo){
    _limitHarian = 5000000;
  }
  
  // Polymorphism: Menhasilkan Output berbeda dengan Class Prioritas
  @override
  String toString() {
    return '${super.toString()} [REGULER]';
  }
}

//Child Class 2 : Prioritas
class Prioritas extends Rekening {
  Prioritas(String nama, String pin, int saldo) : super(nama, pin, saldo){
    _jenisRekening = 'Prioritas';
    _limitHarian = 100000000;
  }

  // Polymorphism: Menhasilkan Output berbeda dengan Class Reguler
  @override
  String toString() {
    return '${super.toString()} [PRIORITAS]';
  }
}

// Class Utility
class Tools{
  static const int padding = 20;
  static const int screen = 70;

  static void textHeader(String text){
    print('\n'+'-'*screen);
    print('$text'.padLeft((screen/2 + text.length/2).toInt()));
    print('-'*screen);
  }

  static void statusTransaksi(String statusTransaksi, String jenisTransaksi, int nominal, String keterangan, int saldo, String nomorRekening, String nama){
    textHeader('STATUS TRANSAKSI');
    print('${'Transaksi'.padRight(padding)}: $jenisTransaksi');
    print('${'Nominal'.padRight(padding)}: $nominal');
    print('${'Status'.padRight(padding)}: $statusTransaksi $keterangan');
    print('${'Nama'.padRight(padding)}: $nama');
    print('${'No. Rekening'.padRight(padding)}: $nomorRekening');
    print('${'Sisa Saldo'.padRight(padding)}: $saldo');
  }

  static void cekSaldo(Rekening nasabah){
    textHeader('INFORMASI REKENING');
    print('${'Nama'.padRight(padding)}: ${nasabah.nama}');
    print('${'Jenis Rekening'.padRight(padding)}: ${nasabah.jenisRekening}');
    print('${'Nomor Rekening'.padRight(padding)}: ${nasabah.nomorRekening}');
    print('${'Saldo'.padRight(padding)}: Rp. ${nasabah.saldo}');
  }

  static void resetHari(){
    for(Rekening nasabah in Rekening.daftarRekening){
      nasabah.resetHari(); 
    }
  }

  static void daftarNasabah(){
    textHeader('DAFTAR NASABAH');
    print ('${'NAMA PEMILIK'.padRight(30)} ${'NOMOR REKENING'.padRight(20)} KATEGORI');
    print('-'*screen);
    for(Rekening nasabah in Rekening.daftarRekening) print(nasabah);
  }
}

// ======================================================================================
// 3. MAIN BLOK PROGRAM
// ======================================================================================
void main() {
  Tools.textHeader('SISTEM LAYANAN PERBANKAN');
  // Instansiasi Object Subclass
  Rekening nasabah1 = Reguler('Tri Misbachul Attabik', '111111', 6000000);
  Rekening nasabah2 = Prioritas('Fardin Rismawan', '222222', 100000000);
  Rekening nasabah3 = Prioritas('Muhammad Nabil Ariq', '333333', 10000000);
 
 // Method Tools daftarNasabah : Mencetak daftar nasabah
  Tools.daftarNasabah();

  // Nasabah 1 Cek Saldo
  Tools.cekSaldo(nasabah1);
  // Nasabah 1 Setor Tunai : BERHASIL
  nasabah1.setorTunai(4000000, '111111');
  
  //Setter Encapsulation
  //  Nasabah 1 Ganti PIN: GAGAL => Mengandung inputan selain angka); 
  nasabah1.pin = 'qwerty';
  //  Nasabah 1 Ganti PIN: BERHASIL
  nasabah1.pin = '123456';

  // Nasabah 1 Tarik Tunai : GAGAL => PIN Sudah diubah menjadi 123456
  nasabah1.tarikTunai(6000000, '111111');
  // Nasabah 1 Tarik Tunai : GAGAL => Limit Harian Tidak Mecukupi Maks. Rp. 5000000.
  nasabah1.tarikTunai(6000000, '123456');

  // Nasabah 2 Cek Saldo
  Tools.cekSaldo(nasabah2);
  // Nasabah 2 Tarik Tunai : BERHASIL
  nasabah2.tarikTunai(40000000, '222222');
  
}