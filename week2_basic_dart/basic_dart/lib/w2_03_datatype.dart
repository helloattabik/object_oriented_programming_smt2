void main(List<String> args) {
  

  // Number (int, double, num)
  int jumlah = 10;
  double harga = 5500.50;
  num nilai = 90;
  
  print(jumlah);
  print(harga);
  print(nilai);

  // Bool
  bool is_login = true;
  print(is_login);

  // String
  String full_name = 'Tri Misbachul Attabik';
  String study_program = 'Informatics'; 
  print(full_name);
  print(study_program);

  // String interpolation
  String nickname = 'Atta';
  int age = 22;
  print('Nama saya $nickname dan umur saya $age tahun.');       /// Untuk ekspresi lebih kompleks, gunakan ${...}

  // Dynamic
  dynamic data = 'One Thousand';
  print(data); 
  data = 1000; 
  print(data);
  data = true;
  print(data); 

  // Convert Data Type


  // String to int
  int number = int.parse('100');
  print(number + 5); // Output: 105
  // String to double
  double decimal = double.parse('3.14');
  print(decimal); 
  // int tp String
  String text  = number.toString();
  print(text); 
  // double to int
  int round = decimal.toInt();
  print(round); 
  // bool to String
  bool status = true;
  String text1 = status.toString();
  print(text1);
}