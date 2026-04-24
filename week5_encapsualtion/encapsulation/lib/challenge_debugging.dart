class Member {
  String nama;
  String email;

  Member(this.nama, this.email);

  @override
  String toString() => 'Member: $nama ($email)';
}

void main() {
  // Database member sementara menggunakan Set
  // Set seharusnya otomatis menolak data yang duplikat
  var daftarMember = <Member>{};

  var m1 = Member("Budi", "budi@email.com");
  var m2 = Member("Budi Hartono", "BUDI@email.com"); // Email sama, cuma beda casing

  daftarMember.add(m1);
  daftarMember.add(m2);

  print('Total member unik: ${daftarMember.length}');
  
  for (var m in daftarMember) {
    print(m);
  }

  if (m1 == m2) {
    print("✅ Berhasil: Sistem mendeteksi member duplikat.");
  } else {
    print("❌ Gagal: Sistem menganggap m1 dan m2 berbeda.");
  }
}