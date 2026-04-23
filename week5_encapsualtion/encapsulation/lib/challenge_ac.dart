void main() {
  AC ruangTamu = AC();
  
  // 1. Cek suhu awal menggunakan getter
  print("Suhu awal: ${ruangTamu.suhu} derajat"); 
  // Output yang diharapkan: Suhu awal: 24 derajat
  
  // 2. Turunkan suhu 10 kali
  for(int i = 0; i < 10; i++) {
    ruangTamu.dinginkan();
  }
  
  // 3. Cek apakah validasi enkapsulasi bekerja (tidak boleh tembus di bawah 16)
  print("Suhu setelah didinginkan terus: ${ruangTamu.suhu} derajat");
  // Output yang diharapkan: Suhu setelah didinginkan terus: 16 derajat 
  // (BUKAN 14 derajat)
}

// TULIS CLASS AC ANDA DI BAWAH INI:
class AC{
  int _suhu = 24;
  int get suhu => _suhu;

  void dinginkan(){
    if(_suhu > 16){
      _suhu -= 1;
    }
  }
}