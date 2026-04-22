// class Person {
//   String name = '';
//   int age = 0;

//   void sayHello(){
//     print('Hello! my name is $name.');
//   }

//   String getInfo(){
//     return 'name: $name, age: $age years old';
//   }

// void greet(String otherName){
//   print('Hello, $otherName! My name is $name.');
//   }
// }

// void main(){
//   Person person1 = Person();
//   person1.name = 'Atta';
//   person1.age = 25;
//   person1.sayHello();
//   print(person1.getInfo());
//   person1.greet('Sari');
// }


class Square {
  int a = 0;
  int b = 0;

  int areaSquare() {
    return a * b;
  }
}

void main() {
  Square obj1 = Square();
  obj1.a = 10;
  obj1.b = 10;
  print(obj1.areaSquare());
}