class Person{
  String name = '';
  int age = 0;
  String city = '';
}

void main(List<String> args) {
  Person person1 = Person();
  person1.name = 'Atta';
  person1.age = 22;
  person1.city = 'Jepara';

  print(person1.name);
  print(person1.age);
  print(person1.city);  
}