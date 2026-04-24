class Course {
  String title;
  int _sks;
  String _grade;

  Course(this.title, this._sks, this._grade);

  // --- TULIS GETTER DI SINI ---
  int get sks => _sks;
  String get grade => _grade;
  // --- TULIS SETTER SKS DI SINI (Validasi 1-6) ---
  set sks(int value){
     value >= 1  && value <= 6 ? _sks = value : print('Error'); 
  }


  // --- TULIS SETTER GRADE DI SINI (Validasi A,B,C,D,E) ---
  // Tip: Gunakan list ['A', 'B', 'C', 'D', 'E'].contains(value) untuk mempermudah
  set grade(String value){
    ['A', 'B', 'C', 'D', 'E'].contains(value) ? _grade = value : print('Error'); 
  }
}
void main() {
  Course course1 = Course('IPA', 3, 'A');
  print(course1);
  course1.toString();






  Course mtk = Course('Matematika', 3, 'A');
  
  print('Mata Kuliah: ${mtk.title}');
  
  // Test 1: Ubah SKS ke nilai yang salah (misal: 10)
  mtk.sks = 10; 
  
  // Test 2: Ubah Grade ke nilai yang salah (misal: 'O')
  mtk.grade = 'O';

  // Lihat hasil akhir
  print('SKS Akhir: ${mtk.sks}');
  print('Grade Akhir: ${mtk.grade}');
}