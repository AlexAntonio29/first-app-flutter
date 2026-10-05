//In this script I use class and methods to create a simple POO, I simulate a human body

void main() {
  // Create an instance of the Human class
  Person human = Person("John", 30, "Male");

  // Access the properties of the Human class
  print("Name: ${human.Name}");
  print("Age: ${human.Age}");
  print("Gender: ${human.Gender}");

  // Call the methods of the Human class
  human.walk();
  human.talk();
  }


  class Person {

  String name;
  int age;//This is not a variable, this is a property of the class Person
  String gender;

  Person(this.name, this.age, this.gender);

  String get Name => name;
  int get Age =>age;
  String get Gender=> gender;

  void set Name(String name) => this.name = name;
  void set Age(int age) => this.age = age;
  void set Gender(String gender) => this.gender = gender;

  void walk() {
    print("$name is walking");
  }

  void talk() {
    print("$name is talking");
  }
}