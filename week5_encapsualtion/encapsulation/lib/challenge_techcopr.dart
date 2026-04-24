class Karyawan{
  String _idkaryawan = '';
  String _nama = '';
  String _divisi = '';

  Karyawan(this._idkaryawan, this._nama, this._divisi);

  String get idkaryawan => _idkaryawan;
  String get nama => _nama;
  String get divisi => _divisi;

  @override
  String toString() {
    return '[$_idkaryawan] $_nama ($_divisi)';
  }
  
  @override
  bool operator ==(Object other) {
    return ((other is Karyawan) && (this._idkaryawan == other._idkaryawan));
  }

  @override
  int get hashCode => _idkaryawan.hashCode;
}

class GerbangKeamanan{
  Set<Karyawan> _karyawanDiDalam = {};
  Set get karyawanDiDalam => _karyawanDiDalam;

  tapIn(Karyawan person){
    if(_karyawanDiDalam.contains(person)){
      print('[i] Akses ditolak: Karyawan dengan ID ${person._idkaryawan} sudah berada di dalam gedung');
    }
    else{
      _karyawanDiDalam.add(person);
      print('[i] Akses Diterima: Karyawan dengan ID ${person._idkaryawan} masuk ke dalam gedung');
    }
  }

  tapOut(Karyawan person){
    if(_karyawanDiDalam.contains(person)){      
       _karyawanDiDalam.remove(person);
      print('[i] Karyawan dengan ID ${person._idkaryawan} keluar gedung');
    }
    else{
      print('[i] Karyawan dengan ID ${person.idkaryawan} tidak ada didalam gedung');
    }
  }

  cekStatus(){
    print(karyawanDiDalam);

  }
}

void main() {
  GerbangKeamanan gerbang = GerbangKeamanan();

  // Data Karyawan
  Karyawan k1 = Karyawan('EMP-001', 'Alice', 'IT');
  Karyawan k2 = Karyawan('EMP-002', 'Bob', 'HR');
  Karyawan k3 = Karyawan('EMP-003', 'Bob', 'HR');
  
  // Seseorang mencoba menduplikasi kartu Alice (ID sama, tapi namanya diubah jadi 'Hacker')
  Karyawan k3_impostor = Karyawan('EMP-001', 'Hacker', 'Unknown');

  print('--- SIMULASI PAGI HARI ---');
  gerbang.tapIn(k1);
  gerbang.tapIn(k2);
  gerbang.tapIn(k3);

  print('\n--- SIMULASI PENYUSUP (KARTU DUPLIKAT) ---');
  // Impostor mencoba masuk pakai ID Alice padahal Alice sudah di dalam!
  gerbang.tapIn(k3_impostor);

  print('\n--- SIMULASI JAM PULANG ---');
  gerbang.tapOut(k1);
  
  // Bob nge-tap keluar 2 kali karena error mesin
  gerbang.tapOut(k2);
  gerbang.tapOut(k2); 

  print('\n--- STATUS AKHIR GEDUNG ---');
  gerbang.cekStatus();
}