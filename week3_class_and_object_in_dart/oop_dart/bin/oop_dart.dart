import 'package:oop_dart/oop_dart.dart' as oop_dart;

class mahasiswa {
  String nim = '';
  String name = '';
  String study_program = '';
  int age = 0;
}


void main(){
  mahasiswa mahasiswa1 = mahasiswa();
  mahasiswa1.nim = '251240001';
  print(mahasiswa1.nim);
  print(mahasiswa1.name);
}
  