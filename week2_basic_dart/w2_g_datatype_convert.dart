void main(List<String> args) {
  double num_double = 3.999999999999999;
  int num_int = 3;
  String num_str = '3';
  bool bool_value = true;

  print('\n'+'-'*80);
  print('Object to double');
  print('-'*80);
  // String to double
  double to_double = double.parse(num_str);
  print('from $num_str [${num_str.runtimeType}] to $to_double [${to_double.runtimeType}]');
  // Int to double
  to_double = num_int.toDouble();
  print('from $num_int [${num_int.runtimeType}] to $to_double [${to_double.runtimeType}]');
  

  print('\n'+'-'*80);
  print('Object to integer');
  print('-'*80);
  // String to int
  int to_int = int.parse(num_str);
  print('from $num_str [${num_str.runtimeType}] to $to_int [${to_int.runtimeType}]');
  // Double to int
  to_int = num_double.toInt();
  print('from $num_double [${num_double.runtimeType}] to $to_int [${to_int.runtimeType}]');
  num_double = 3.9999999999999999;       // Output = 4 (angka dibelakang koma ada 16 digit)
  to_int = num_double.toInt();
  print('from $num_double [${num_double.runtimeType}] to $to_int [${to_int.runtimeType}]');
  

  print('\n'+'-'*80);
  print('Object to string');
  print('-'*80);
  //Double to String
  String to_string = num_double.toString();
  print('from $num_double [${num_double.runtimeType}] to $to_string [${to_string.runtimeType}]');
  //Integer to String
  to_string = num_int.toString();
  print('from $num_int [${num_int.runtimeType}] to $to_string [${to_string.runtimeType}]');

  print('\n'+'-'*80);
  print('Boolean to string');
  print('-'*80);
  // Bool to String
  to_string = bool_value.toString();
  print('from $bool_value [${bool_value.runtimeType}] to $to_string [${to_string.runtimeType}]');
  
}

