/*

//interface:
It is a contract that defines the capabilities of a class. //এটি এমন একটি চুক্তি যা একটি ক্লাসের ক্ষমতা নির্ধারণ করে।
It is used to achieve abstraction in the Dart programming language. //এটি ডার্ট প্রোগ্রামিং ভাষায় বিমূর্ততা(রূপ বা আকার নেই)অর্জনের জন্য ব্যবহৃত হয়।
When you implement an interface, you must implement all the properties and methods defined in the interface.

🔥 The real rule:  //vvi
When you use...	     You must implement...
extends (inherit)---->Only abstract methods
implements----------->All methods and properties, even if they have a body in the abstract class
properties not need must ,,but method is important ( abstract mehtod or normal method ) to implement



Syntax For Implementing Multiple Interfaces In Dart    //vvi
class ClassName implements abstractClass1, abstractClass2, abstractClass3 {
  // code
}

*/





abstract class Animal {
  String? name;
  
  // Abstract method (no implementation)
  void speak();

  // Concrete method (with implementation)
  void sleep() {
    print('The animal is sleeping');
  }
}

class Dog implements Animal {
  String? name;
  // Must implement 'speak()' (because it's abstract)
  @override
  void speak() {
    print('$name says woof!');
  }
  @override
  void sleep() {
    print("Updated the animal is sleeping: ");
  }
}

void main() {
  Dog dog = Dog();
  dog.name = 'Buddy';
  dog.speak();
  dog.sleep();  // Works fine because it's implemented in Animal
}









/*
Why Don't We Use super with Interfaces?
*In Dart, when you're using the implements keyword with an interface, you cannot use super because:
*Interfaces don't have constructors. They only define method signatures and properties, but they don’t
  have any implementation or constructor that you can call using super.
*The super keyword is only used when you're dealing with a class that extends another class          //vvi
  (i.e., with inheritance). It allows you to call the constructor or methods of the parent class.



Example1: of Using super with extends (Inheritance):
If you're extending a class (not an interface), you can call the parent class constructor using super   //vvi

abstract class Animal {
  String? name;
  Animal(this.name);    // Constructor in the abstract class
  void speak();         // Abstract method
}
class Dog extends Animal {
  Dog(String name) : super(name); // Calling the constructor of Animal using 'super'
  @override
  void speak() {
    print('$name says woof!');
  }
}

void main() {
  Dog dog = Dog("Buddy");
  dog.speak();  // Output: Buddy says woof!
}






Example2: of Using implements (Interface):
When you're implementing an interface, you don’t use super because the interface            //vvi
  doesn't have a constructor. Instead, you define the constructor in the implementing class.

abstract class AnimalInterface {
  String? name;
  int? age; 
  void speak();   // Method signatures (no constructor here)
}
class Dog implements AnimalInterface {
  String? name;
  int? age;
  Dog(this.name, this.age);    // Constructor in implementing class
  @override
  void speak() {
    print('$name says woof!');
  }
}

void main() {
  Dog dog = Dog("Buddy", 3);  // Pass values to Dog constructor
  dog.speak();  // Output: Buddy says woof!
}


*/

