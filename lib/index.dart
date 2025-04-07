/// PENIS
library firstapp;

List<String> hobbies = ['being cunty', 'kurdish liberal nationalism'];

// you can prefix it with an underscore (_) to make it private
// this statement preps this file for being available to import
// by including it in a code library called 'firstapp', whatever follows the library directive
// Libraries and imports:

// show x = import ONLY x, showing specific member(s)
// hide x = import EVERYTHING but LEAVE OUT x, hiding specific member(s)
// import x as y = y becomes how x is referred to, alias
// imports usually follow this template
// import 'package:<package_name>/<folder>/<file>.dart';

// to import a file from ur own project, you need to create a lib directory
// as in, if your files are meant to be imported elsewhere they MUST be in a `lib` directory at the root of your project
// you also need to define a pubspec.yaml
// EXPORTS MUST BE IN THE SCOPE OF THE LIBRARY DIRECTIVE.

late int age;

// late is used when you KNOW that a NON NULLABLE variable
// meaning its guaranteed to have a value
// will be initialized later, this'll make the compiler trust you
// and delay the initialization check until runtime

// numbers and everything else in dart are Objects except null
// Arrays are Lists
// Objects are Maps
// Lists and Maps are collections

// Types and functions are objects
// Variables are not objects
// But they values they told are objects as they are instances of the class
// So variables are references to objects

// void and null are special cases

// null represents the absence of a value or no value assigned. Intentionally
// void means no return value for a function. when they arent expected to

// int, String, List, Map, void, dynamic, bool, num, Set

// ObjectType<ParameterType>

void main() {
  age = 19;
  const Object? name = "Lara"; // default value is null
  // const and its fields cannot be changed, it is compile-time constant
  // final is const but the fields can be changed
  // const can declare constant values

  // final is a runtime constant
  // const is a compile-time constant

  // there's no need to annotate the type as dart infers it
  // just use var. its type safe, static

  final List<int> hobbies = [1, 2, 3];
  hobbies.add(4);

  // deconstructing
  var [_, _, int three, _] = hobbies;

  print([...hobbies, 5, 6, 7]); // spread
  // ...? null safe spread

  print(three);

  print("$name has $hobbies as interests.");

  print("$name is $age years old.");

  // soundness = value type always matches expression type, just like c# + java

  // wildcard variables
  // basically using _ as a placeholder but you cant use it as a variable
  // its a placeholder for values you arent interested in

  int _ = 1;

  for (var _ in hobbies) {
    try {
      throw '!';
    } catch (_) {
      print('pop da oppz');
    }
  }

  // operators
  // is checks if a value is of a certain type
  // print(age is! int);

  //ternary operators
  print("$name is a ${(age >= 18 ? 'Adult' : 'minor')}");

  int x = 0;

  // unary (1 operrand) postfix and prefix
  print(x++); // get x and then increment it
  print(x); // get x
  print(++x); // increment then get x
  print(x); // get x
  print(-(x)); // unary minus, to reverse the sign of a value

  print(10 ~/ 3); // integer division
  print(10 / 3); // normal division
  print(100 % 3); // divie then return the remainder
  print(100 / 3); // divide then return the result
  print(3 * 3); // multiply

  print(10 + 5); // add
  print(10 - 5); // subtract

  print("10" as Object); // explicit type cast
  // type casting only works if the type youre casting to is a subtype

  print("10" is int); // checks if an object is of a specific type
  print("10" is! int); // checks if an object is not of a specific type
  // print(int.parse("10") is int);

  // supertypes and subtypes

  // All types are objects, because theyre programmatically defined as
  // classes in the core dart library
  // int, String, List, etc are all subtypes of Object
  // Object is like a motherclass and all subtypes are like classes
  // that use extends of another class, or inhertience

  // You cast when you know the actual type, but the variable has
  // a more general type, such as object or dynamic
  // Or when you work with inheritence and polymorphism

  //class Animal {}

  //class Dog extends Animal {}
  // Animal hala = Dog();
  // Dog myPet = hala as Dog;

  // or when you need a more specific type for a calculation

  // num numValue = 10.5;
  // int intValue =
  //     numValue as int; // This will throw an error unless numValue is an int

  // num is a supertype, int and double are its subtypes.
  // everything is a subtype of dynamic. Which disables type safety

  // You can upcast, int as num, int as Object. Bc ur going from more specific to general But not always downcast as it might fail. because it might not be the expected type

  print(10 > 5);
  print(8 < 10);
  print(10 == int.parse("10"));
  print("lara" != "Lara" && true);

  // null safety means a variable can only be null if its
  // explicitly allowed in its definition

  // by default, a variable of a non-nullable type must always
  // have a value and cannot be null
  // to make a type nullable (Type?), you just add a question mark at the end

  String? gay = "me";

  print(gay);
  // print(gay?.length);
  // print(gay ?? "was/were");
  gay = null;
  print(gay);

  // There's also a null aware access operator (?.)
  // Basically stops the compiler from freaking out if
  // The object youre trying to get a value from is null

  print(gay?.length);

  // Null-coalescing operator (??) provides a fallback value
  // if the requested value is null

  print(gay ?? "was/were");

  Map<String, dynamic> person = {'name': null};

  person
    ..['name'] = "lara"
    ..['age'] = 19
    ..['city'] = "Los Angeles, CA";

  // the cascade operator (..) is basically used to update or add
  // multiple fields at once
  // you can also call multiple methods of the same object

  print(person);
  // bob();

  // spread (...) essentially just opens up a List and
  // you can use it to combine lists

  // () represents a function call
  // [] represents the subscript address, like to access an
  // element of a list
  // ?[] is used when that element might be a null.

  // TYPES
}

// Metadata

// They are annotations to give additional information about ur code

/// Annotation on instance members which override an interface member.
///
/// Annotations have no effect on the meaning of a Dart program.
/// This annotation is recognized by the Dart analyzer, and it allows the
/// analyzer to provide hints or warnings for some potential problems of an
/// otherwise valid program.
/// As such, the meaning of this annotation is defined by the Dart analyzer.
///
/// The `@override` annotation expresses the intent
/// that a declaration *should* override an interface method,
/// something which is not visible from the declaration itself.
/// This extra information allows the analyzer to provide a warning
/// when that intent is not satisfied,
/// where a member is intended to override a superclass member or
/// implement an interface member, but fails to do so.
/// Such a situation can arise if a member name is mistyped,
/// or if the superclass renames the member.

// it begins with @ and then reference a compile-time constant (such as deprecated)
// or a call to a constant constructor

// use /// or /** */ to add documentation comments
// this is an example of metadata annotations
/// use ayre instead
@Deprecated(
  "use ayre instead",
) // this is a constant constructor, @deprecated would be a runtime constant
// the difference in this case is that a constant constructor includes a message that shows up on the IDE
// while the runtine constant only lets the dart analyzer know that its deprecated in this instance
int bob() {
  return 0;
}
