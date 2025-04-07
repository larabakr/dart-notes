void main() {
  var lara = new Person('lara abu bakr', 19);

  print(lara.greeting());
}

// when we're creating objects using classes we use dot notation to access attributes
// whilist with maps we use square bracket notation

class Person {
  // blueprint or template for creating objects with implementation of state (attributes/fields) and behavior (functions/methods)
  String name;
  int age = 19;

  Person(
    this.name,
    this.age,
  ); // constructor, a special type of function called to create an object
  // preps the object for use, initializes/assigns values from arguments, etc
  // the 'this' keyword referrs to the object itself, the current instance.

  //

  String greeting() {
    // defining a method
    return "name: $name, age: $age"; // string interpolation
  }
}
