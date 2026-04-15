void main(List<String> args) {
  List buah = ['Apel', 'Jeruk', 'Mangga', 'Durian'];

  // Akses data berdasarkan indeks
  print(buah[0]);
  print(buah[1]);
  print(buah[2]);
  print(buah[3]);

  // Menambahkan data kedalam list
  buah.add('Anggur');
  print(buah.length);

  // Mengganti data didalam list
  buah[0] = 'Semangka';
  print(buah);

  
}