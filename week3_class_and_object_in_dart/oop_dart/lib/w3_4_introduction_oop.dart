String name1 = 'Attabik';
int age1 = 22;
String name2 = 'Nabil';
int age2 = 19;

void PrintMahasiswa (String name, String age){
  print('Nama: $name, Umur: $age');
}

// With Approach OOP
class Mahasiswa{
  String name = '';
  int age = 0;

  void tampilkan (String name, String age){
    print('Nama: $name, Umur: $age');
  }
}
