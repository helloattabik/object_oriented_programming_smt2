int screen = 80;
void centerText(String text) {
  int centerPosition = (screen / 2 + text.length / 2).toInt();
  print(text.padLeft(centerPosition));
}
class Film {
  String judul;
  String sutradara;
  int durasiMenit;
  String genre;

  Film(this.judul, this.sutradara, this.durasiMenit, this.genre);

  Film.dokumenter(this.judul, this.durasiMenit):
    sutradara = 'Unknown',
    genre = 'Dokumenter';

  void tampilkanInfo() {
    print('\n');
    print('${'Judul'.padRight(12)}: $judul');
    print('${'Sutradara'.padRight(12)}: $sutradara');
    print('${'Durasi'.padRight(12)}: $durasiMenit Menit');
    print('${'Genre'.padRight(12)}: $genre');
  }
}

class Tiket {
  String namaFilm;
  String kursi;
  String kelas;
  final double harga;
  Tiket(this.namaFilm, this.kursi, this.kelas, this.harga);
  Tiket.vip(this.namaFilm, this.kursi):
    kelas = 'VIP',
    harga = 150000;
  Tiket.reguler(this.namaFilm, this.kursi):
    kelas = 'Reguler',
    harga = 50000;

  void cetakTiket(){
    print('\n');
    print('='*screen);
    centerText('TIKET BIOSKOP');
    print('='*screen);
    print('${'Film'.padRight(12)}: $namaFilm');
    print('${'Kelas'.padRight(12)}: $kelas');
    print('${'Kursi'.padRight(12)}: $kursi');
    print('${'Harga'.padRight(12)}: $harga');
    print('='*screen);
    centerText('SELAMAT MENIKMATI TONTONAN ANDA');
    print('='*screen);
  }
}

void main() {
 Film film1 = Film("Harry Potter and the Sorcerer's Stone (2001)", 'J.K Rowling', 152, 'Fantasy');
 Film film2 = Film.dokumenter("The Social Dilemma (2020)", 94);
 Film film3 = Film.dokumenter("Our Planet (2019)", 403);

 Tiket tiket1 = Tiket("Harry Potter and the Sorcerer's Stone (2001)", 'C001', 'Compliment', 0);
 Tiket tiket2 = Tiket.vip("Harry Potter and the Sorcerer's Stone (2001)", 'V001');
 Tiket tiket3 = Tiket.reguler("Harry Potter and the Sorcerer's Stone (2001)", 'R001');

 film1.tampilkanInfo();
 film2.tampilkanInfo();
 film3.tampilkanInfo();

 tiket1.cetakTiket();
 tiket2.cetakTiket();
 tiket3.cetakTiket();
}