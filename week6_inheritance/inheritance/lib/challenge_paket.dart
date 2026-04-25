class Paket {
  static int totalPaket = 0;
  int idPaket = 0; 
  String namaPengirim = '';
  String namaPenerima = '';
  String alamatAsal = '';
  String alamatTujuan = '';
  String layanan = 'Reguler';
  int berat = 0;
  
  Paket(this.namaPengirim, this.namaPenerima, this.alamatAsal, this.alamatTujuan, this.berat) {
    totalPaket++;
    idPaket = totalPaket; 
  }

  double hitungTarif() {
    return berat * 15000.0;
  }

  void cetakResi() {
    print('-----------------------------------------');
    print('${'Jenis Layanan'.padRight(20)}: $layanan');
    print('${'Nama Pengirim'.padRight(20)}: $namaPengirim');
    print('${'Nama Penerima'.padRight(20)}: $namaPenerima');
    print('${'Berat Paket'.padRight(20)}: $berat Kg');
    print('${'Total Biaya'.padRight(20)}: Rp ${hitungTarif()}');
    print('${'Butuh Forklift'.padRight(20)}: ${statusAngkut()}'); 
    print('-----------------------------------------\n');
  }
}

// ==========================================
// UTILITY CLASS 
// ==========================================
class GeneratorResi {
  // PERBAIKAN 3: Alat pembuat resi sekarang butuh data 'id' dari paketnya
  static String buat(String prefix, int id) {
    return '$prefix-100$id';
  }
}

class Reguler extends Paket {  
  Reguler(String namaPengirim, String namaPenerima, String alamatAsal, String alamatTujuan, int berat) 
      : super(namaPengirim, namaPenerima, alamatAsal, alamatTujuan, berat);

  @override
  void cetakResi() {
    print('NOMOR RESI: ${GeneratorResi.buat('REG', idPaket)}');
    super.cetakResi();
  }
}

class Express extends Paket {  
  Express(String namaPengirim, String namaPenerima, String alamatAsal, String alamatTujuan, int berat) 
      : super(namaPengirim, namaPenerima, alamatAsal, alamatTujuan, berat);
  
  @override
  String layanan = 'Express';

  @override
  void cetakResi() {
    print('NOMOR RESI: ${GeneratorResi.buat('EXP', idPaket)}');
    super.cetakResi();
  }

  @override
  double hitungTarif() {
    double tarifDasar = super.hitungTarif();
    return tarifDasar + (tarifDasar * 0.25);
  }
}

class VIP extends Paket {  
  VIP(String namaPengirim, String namaPenerima, String alamatAsal, String alamatTujuan, int berat) 
      : super(namaPengirim, namaPenerima, alamatAsal, alamatTujuan, berat);
  
  @override
  String layanan = 'VIP (Fragile)';

  @override
  void cetakResi() {
    print('NOMOR RESI: ${GeneratorResi.buat('VIP', idPaket)}');
    super.cetakResi();
  }

  @override
  double hitungTarif() {
    double tarifDasar = super.hitungTarif();
    return tarifDasar + 50000;
  }
}

extension DeteksiKeamanan on Paket {
  String statusAngkut() {
    if (berat > 20) return "Ya";
    return "Tidak";
  }
}

void main() {
  Paket paket1 = Reguler('Atta', 'Bayu', 'Jepara', 'Semarang', 10);
  Paket paket2 = Express('Atta', 'Dimas', 'Jepara', 'Semarang', 15);
  Paket paket3 = VIP('Atta', 'Novenda', 'Jepara', 'Semarang', 25); 


  paket1.cetakResi(); 
  paket2.cetakResi();
  paket3.cetakResi(); 
}