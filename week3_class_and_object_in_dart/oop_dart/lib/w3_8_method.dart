class Person {
  String name = '';
  int age = 0;

  void sayHello(){
    print('Hello! my name is $name.');
  }

  String getInfo(){
    return 'name: $name, age: $age years old';
  }

void greet(String otherName){
  print('Hello, $otherName! My name is $name.');
  }
}

void main(){
  Person person1 = Person();
  person1.name = 'Atta';
  person1.age = 25;
  person1.sayHello();
  String info = person1.getInfo();
  print(info);
  person1.greet('Sari');
}
