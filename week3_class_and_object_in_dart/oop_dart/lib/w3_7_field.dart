class Mahasiswa{
  String nama = '';
  String nim = '';
  String prodi = '';
  double ipk = 0.0;
}

void main(){
  Mahasiswa mhs1 = Mahasiswa();
  mhs1.nama = 'Tri Misbachul Attabik';
  mhs1.nim = '251240001637';
  mhs1.prodi = 'Teknik Informatika';
  mhs1.ipk =  4.0;

  print('Nama   : ${mhs1.nama}  | NIM : ${mhs1.nim} | Prodi : ${mhs1.prodi} | IPK : ${mhs1.ipk}');
}