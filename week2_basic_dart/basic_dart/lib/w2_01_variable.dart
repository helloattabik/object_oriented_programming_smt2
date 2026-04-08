import 'dart:io';

void main(){
  // Variables
  print('-'*80);
  // without variable
  print('Tri Misbachul Attabik');

  // with variable
  String full_name = 'Tri Misbachul Attabik';
  print(full_name);

  // create variable use var for auto-detect data type
  var first_name = 'Tri Misbachul';
  var last_name = 'Attabik';
  var age = 22;

  // print variable inline string interpolation
  print('Nama saya $first_name [Type is ${first_name.runtimeType}] $last_name [Type is ${last_name.runtimeType}], umur saya $age [Type is ${age.runtimeType}] tahun');

  // create variable use final data type
  final city = 'Jepara';
  // city = 'Kudus'; // error because final data type not changeable
  print(city);

  //create variable use const data type
  const phi = 3.14;
  print(phi);

  //create variable use late data type
  late var password;
  stdout.write('Input your password    : ');
  password = stdin.readLineSync()!;
  print('[i] Your password is $password');
}