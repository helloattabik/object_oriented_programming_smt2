class Karakter{
  static int totalKarakter = 0;
  String nama = '';
  int healthPoints = 0;

  Karakter(this.nama, this.healthPoints);

  infoKarakter(){
    print('${'Nama'.padRight(20)}: $nama');
    print('${'HP'.padRight(20)}: $healthPoints');
  }
}

class Pahlawan extends Karakter{
  String senjata = '';
  Pahlawan(String nama, int healthPoints, this.senjata): super(nama, healthPoints);

  @override
  infoKarakter() {
    super.infoKarakter();
    print('${'Senjata'.padRight(20)}: $senjata');
  }
}

class Monster extends Karakter{
  String elemen = '';
  Monster(String nama, int healthPoints, this.elemen): super(nama, healthPoints);

  @override
  infoKarakter() {
    super.infoKarakter();
    print('${'Elemen'.padRight(20)}: $elemen');
  }

}

extension cekKesehatan on int{
  bool isKritis() => this < 20;
}

void main(){
  Pahlawan pahlawan1 = Pahlawan('pahlawan1', 100, 'pedang');
  Monster monster1 = Monster('monster1', 100, 'petir');  

  pahlawan1.infoKarakter();
  monster1.infoKarakter();

  if(pahlawan1.healthPoints.isKritis()){
    print('${pahlawan1.nama} sedang dalam bahaya! HP: ${pahlawan1.healthPoints}');
  }

  else{
    print('${pahlawan1.nama} dalam kondisi aman! HP: ${pahlawan1.healthPoints}');
  }

  print('Total karakter yang sudah dibuat: ${Karakter.totalKarakter}');

}