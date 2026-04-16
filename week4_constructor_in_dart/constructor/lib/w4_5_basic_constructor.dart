class Person{
  String name = '';
  int age = 0;
  String city = '';

  Person(String name, int age, String city){
    this.name = name;
    this.age = age;
    this.city = city;
  }

  void sayHello(){
    print('Hello, my name is $name, I am $age years old, and I live in $city.');
  }
}

void main(List<String> args) {
  Person person1 = Person('Atta', 22, 'Jepara');
  person1.sayHello();
}



 