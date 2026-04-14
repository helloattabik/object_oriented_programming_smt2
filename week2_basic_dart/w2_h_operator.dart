void main(List<String> args) {
  var num1 = 9;
  var num2 = 3;

// Aritmatika Operator
  print('-------------------------------------------------------------------------------------');
  print('Operator       Keterangan                    Contoh         Hasil      ');
  print('-------------------------------------------------------------------------------------');
  print('   +           Penjumlahan                   ${num1} + ${num2}           ${num1+num2}');
  print('   -           Pengurangan                   ${num1} - ${num2}           ${num1-num2}');
  print('   *           Perkalian                     ${num1} * ${num2}           ${num1*num2}');
  print('   /           Pembagian                     ${num1} / ${num2}           ${num1/num2}');
  print('   ~/          Pembagian Bulat               ${num1} ~/ ${num2}          ${num1~/num2}');
  print('   %           Sisa Bagi                     ${num1} % ${num2}           ${num1%num2}');
// Aritmatika Operator
  print('-------------------------------------------------------------------------------------');
  print('Operator       Keterangan                    Contoh         Hasil      ');
  print('-------------------------------------------------------------------------------------');
  print('   ==          Sama dengan                   ${num1} == ${num2}         ${num1==num2}');
  print('   !=          Tidak sama dengan             ${num1} != ${num2}         ${num1!=num2}');
  print('   >           Lebih dari                    ${num1} > ${num2}          ${num1>num2}');
  print('   <           Kurang dari                   ${num1} < ${num2}          ${num1<num2}');
  print('   >=          Lebih dari atau sama dengan   ${num1} >= ${num2}         ${num1>=num2}');
  print('   <=          Kurang dari atau Sama dengan  ${num1} <= ${num2}         ${num1<=num2}');
  print('-------------------------------------------------------------------------------------');
  int stok = 100;
  print('Barang tersedia sebelumnya   = $stok');
  stok -= 10;
  print('Barang tersedia saat ini     = $stok');
  print('----------------------------------------');
  print('Barang tersedia sebelumnya   = $stok');
  stok++;
  print('Barang tersedia saat ini     = $stok');
  print('----------------------------------------');
  print('Barang tersedia sebelumnya   = $stok');
  stok*=10;
  print('Barang tersedia saat ini     = $stok');
  print('----------------------------------------');
  bool username = true;
  bool password = true;
  print(username && password);
}



}