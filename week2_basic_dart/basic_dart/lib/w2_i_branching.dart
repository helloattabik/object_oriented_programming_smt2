void main(List<String> args) {
  String nama = 'Tri Misbachul Attabik';
  String? email = null;
  String mata_kuliah = 'Pemrograman Berbasis Objek';
  int nilai = 98;
  dynamic grade;
  if(nilai >= 90){
    grade = 'A';
  }else if(nilai >= 80){
    grade = 'B';
  }else if(nilai >= 70){
    grade = 'C';
  }else if(nilai >= 60){
    grade = 'D';
  }else{
    grade = 'E';    
  }
  print('Nama           : $nama');
  print('Email          : $email');
  print('Mata Kuliah    : $mata_kuliah');
  print('Nilai          : $nilai');
  print('Status         : ${nilai >= 75 ? 'Lulus' : 'Tidak Lulus'}');
  print('Grade          : $grade');

}