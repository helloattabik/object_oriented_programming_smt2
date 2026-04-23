void main() {
  Mobil mobilCepat = Mobil();
  
  // 1. Cek kecepatan awal
  print("Kecepatan awal: ${mobilCepat.kecepatan} km/jam"); 
  // Output: Kecepatan awal: 0 km/jam
  
  // 2. Injak gas 150 km/jam
  mobilCepat.gas(150);
  print("Kecepatan setelah di-gas 150: ${mobilCepat.kecepatan} km/jam");
  // Output: Kecepatan setelah di-gas 150: 150 km/jam
  
  // 3. Cek validasi batas atas (Maksimal 200)
  mobilCepat.gas(100); 
  print("Kecepatan setelah di-gas lagi 100: ${mobilCepat.kecepatan} km/jam");
  // Output: Kecepatan setelah di-gas lagi 100: 200 km/jam 
  // (BUKAN 250 km/jam)
  
  // 4. Cek validasi batas bawah (Minimal 0)
  mobilCepat.rem(300);
  print("Kecepatan setelah di-rem mendadak 300: ${mobilCepat.kecepatan} km/jam");
  // Output: Kecepatan setelah di-rem mendadak 300: 0 km/jam 
  // (BUKAN -100 km/jam)
}

// TULIS CLASS MOBIL ANDA DI BAWAH INI:
class Mobil {
  int _kecepatan = 0;
  get kecepatan => _kecepatan;
  gas(int nilai){
    if(kecepatan < 200) _kecepatan += nilai;
    if(kecepatan > 200) _kecepatan = 200;
  }
  rem(int nilai){
    if(kecepatan > 0) _kecepatan -= nilai;
    if(kecepatan < 0) _kecepatan = 0;
  }
}
