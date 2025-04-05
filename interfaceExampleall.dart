
            
            //if you have any doubt should see the dart tutorial (vvi: 3,4,5)

//example1:
/*In this example below, there is an interface Laptop with two methods turnOn() and turnOff(). 
The class MacBook implements the interface and overrides the methods to print the message.
*/

// class Laptop{
//   turnOn(){
//     print("Laptop is turn on:");

//   }
//   turnOff(){
//     print("Laptop is turn off:");
//   }
// }
// class MacBook implements Laptop{
//   @override
//   turnOn() {
//    print("MacBook is turn on:");
//   }
//   @override
//   turnOff() {
//     print("Macbook is turn off:");
//   }
// }

// void main(){
//   MacBook macBook=MacBook();
//   macBook.turnOn();
//   macBook.turnOff();
// }



// //example2:
/*In this example below, there is an abstract class named Vehicle. The Vehicle class has two abstract 
methods start() and stop(). The Car class implements the Vehicle interface. The Car class has to 
implement the start() and stop() methods.
*/

// abstract class Vehicle{
//   start();
//   stop();
// }
// class Car implements Vehicle{
//   @override
//   start() {
//     print("Car is started");
//   }
//   @override
//   stop() {
//     print("Car is stopped");
//   }
// }
// void main(){
//   Car car=Car();
//   car.start();
//   car.stop();
// }



// //example3:
/*In this example below, two abstract classes are named Area and Perimeter. The Area class has an 
abstract method area() and the Perimeter class has an abstract method perimeter(). The Shape class 
implements both the Area and Perimeter classes. The Shape class has to implement the area() and 
perimeter() methods.
*/

// abstract class Area{
//   area();

// }
// abstract class Perimeter{
//   perimeter();
// }

// class Shape implements Area,Perimeter{
//   double length;
//   double width;
//   Shape(this.length,this.width);

//   @override
//   area() {
//     print("Area is: ${length*width}");
//   }
//   @override
//   perimeter() {
//      print("Perimeter is: ${2*length*width}");
//   }
// }

// void main(){
//   Shape shape=Shape(4, 5);
//   shape.area();
//   shape.perimeter();
// }


//example4:
/*In this example below, there is an abstract class named Person. The Person class has one property 
name and two abstract methods run and walk. The Student class implements the Person interface. The 
Student class has to implement the run and walk methods.
*/


// abstract class Person{
//   String? name;
//   run();
//   walk();
// }
// class Student implements Person{
//   @override
//   String? name;
//   Student(this.name);
//   @override
//   run() {
//     print("Student is runing:");
    
//   }
//   @override
//   walk() {
//     print("Student is walking:");
    
//   }
// }
// void main(){
//   Student sutdent=Student("kabir");
//   sutdent.run();
//   sutdent.walk();
// }


// //example5:      //vvi
/* In this example below, there is abstract class named CalculateTotal and CalculateAverage. The 
CalculateTotal class has an abstract method total() and the CalculateAverage class has an 
abstract method average(). The Student class implements both the CalculateTotal and CalculateAverage 
classes. The Student class has to implement the total() and average() methods.*/


// abstract class CalculateTotal{
//   total();
// }
// abstract class CalculateAverage{
//   average();
// }
// class Student implements CalculateTotal,CalculateAverage{
//       int mark1,mark2,mark3;
//       Student(this.mark1,this.mark2,this.mark3);
      
//       @override
//       int total() {
//         return mark1+mark2+mark3;
//         }
//      @override
//      average() {
//       print("Studnet average is: ${total()/3} ");
    
//   }
// }

// void main(){
//   Student student=Student(5, 5, 5);
//   print("Student total mark is: ${student.total()}");
//   student.average();
// }


