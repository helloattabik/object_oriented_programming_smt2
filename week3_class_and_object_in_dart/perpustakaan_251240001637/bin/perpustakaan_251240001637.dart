import 'package:perpustakaan_251240001637/perpustakaan_251240001637.dart' as perpustakaan_251240001637;
import 'dart:io';

class Buku{
  String judul = '';
  String penulis = '';
  String isbn = '';
  int tahunTerbit= 0;
  bool Tersedia = true;
  int screen = 80;

  void tampilkanInfo(){
    print('-'*screen);
    print('Judul: $judul');
    print('Penulis: $penulis');
    print('ISBN: $isbn');
    print('Tahun Terbit: $tahunTerbit');
    print('Tersedia: $Tersedia');
    print('-'*screen);
  }
  void pinjam(){
    Tersedia = false;
  }
  void kembalikan(){
    Tersedia = true;
  }
}
void main(List<String> arguments) {

  

  Buku buku1 = Buku();
  buku1.judul = 'Harry Potter';
  buku1.penulis = 'J.K. Rowling';
  buku1.isbn = '978-0-7475-3269-9';
  buku1.tahunTerbit = 2000;
  buku1.Tersedia = true;

  Buku buku2 = Buku();
  buku2.judul = 'To Kill a Mockingbird';
  buku2.penulis = 'Harper Lee';
  buku2.isbn = '978-0-06-1120';
  buku2.tahunTerbit = 1960;
  buku2.Tersedia = true;

  Buku buku3 = Buku();
  buku3.judul = 'The Great Gatsby';
  buku3.penulis = 'F. Scott Fitzgerald';
  buku3.isbn = '978-0-7432-7';
  buku3.tahunTerbit = 1925;
  buku3.Tersedia = true;

  int screen = 80;
  print('='*screen);
  print('Selamat Datang di Perpustakaan UNISNU Jepara');
  print('='*screen);
    while (true){
      print('1. Lihat Daftar Buku');
      print('2. Pinjam Buku');
      print('3. Kembalikan Buku');
      stdout.write('Pilih menu'.padRight(40)+': ');
      int userSelect = int.parse(stdin.readLineSync()!);
      if(userSelect == 1){
        buku1.tampilkanInfo();
        buku2.tampilkanInfo();
        buku3.tampilkanInfo();
      }
      else if(userSelect == 2){
        stdout.write('Masukkan nomor ISBN buku'.padRight(40)+': ');
        String checkOut = stdin.readLineSync()!;
      }
  }
}
