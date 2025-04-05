import 'dart:io';

void main() {
  print('Welcome to Dart');
  stdout.write('Enter your name: ');
  // stdin.readLineSync();
  var name = stdin.readLineSync();
  print("Welcome $name");
  var raman = new Human();

  print(raman.runtimeType); // Human
  print(raman is Human); // true
  print(raman is Object); // true
  print(raman is int); // false
  print(raman is String); // false
  print(raman is List); // false
  print(raman is Map); // false
  print(raman is Set); // false
  print(raman is bool); // false
  print(raman is double); // false
  print(raman is dynamic); // true
  print(raman is Function); // false
  print(raman is Null); // false
  print(raman is! int); // true
  print(raman is! String); // true
  print(raman is! List); // true
  print(raman is! Map); // true

  // Declartation of a variable
  String? n; // null safety
  print(n); // null

  BigInt longValue = BigInt.parse("1234567890123456789012345678901234567890");
  print(longValue); // 1234567890123456789012345678901234567890
  print(longValue.runtimeType); // BigInt  `
  print(longValue is BigInt); // true
  print(longValue is int); // false
  print(longValue);

  double percentage = 99.99;
  print(percentage); // 99.99
  print(percentage.runtimeType); // double
  print(percentage is double); // true
  print(percentage is int); // false
  print(percentage is String); // false
  print(percentage is bool); // false
  print(percentage is List); // false
  print(percentage is Map); // false
  print(percentage is Set); // false
  print(percentage is dynamic); // true
  print(percentage is Function); // false
  print(percentage is Null); // false

  num per = 99; // num is a parent class of int and double
  print(per); // 99.99
  print(per.runtimeType); // double
  print(per is double); // true based on actual assigned value
  print(per is int); // false can be changed based on actual assigned value
  print(per is String); // false
  print(per is bool); // false
  print(per is List); // false

  bool isLogin = true; // boolean value
  print(isLogin); // true
  print(isLogin.runtimeType); // bool

  print(isLogin is bool); // true
  print(isLogin is int); // false
  print(isLogin is String); // false
  print(isLogin is double); // false
  print(isLogin is List); // false
  print(isLogin is Map); // false
  print(isLogin is Set); // false
  print(isLogin is dynamic); // true
  print(isLogin is Function); // false
  print(isLogin is Null); // false
  print(isLogin is! int); // true
  print(isLogin is! String); // true
  print(isLogin is! List); // true
  print(isLogin is! Map); // true

  // Var vs dynamic
  // var : A keyword that is used to declare a variable with a specific type
  // dynamic : A keyword that is used to declare a variable with a dynamic type

  // var : A variable that can hold a value of any type, but the type is determined at compile time
  // dynamic : A variable that can hold a value of any type, and the type is determined at runtime

  // Demonstration of var and dynamic

  //var
  var name1 = "John"; // String
  print(name1); // John
  print(name1.runtimeType); // String
  print(name1 is String); // true

  // Dynamic
  var newname; // same as dynamic newname = null;
  newname = "John"; // String
  print(newname); // John
  print(newname.runtimeType); // String
  newname = 123; // int
  print(newname); // 123
  print(newname.runtimeType); // int

  // Function : A block of code that performs a specific task
  // Function : A block of code that performs a specific task and can return a value

  // Function : A block of code that performs a specific task and can take parameters and return a value and can be assigned to a variable and can be passed as an argument to another function and can be called from another function
  // Function : A block of code that performs a specific task and can take parameters and return a value and can be assigned to a variable and can be passed as an argument to another function and can be called from another function and can be used as a callback function

  var myC = myClass(); // Object of myClass
  print(myC); // Instance of myClass
  print(myC.runtimeType); // myClass
  print(myC is myClass); // true
  print(myC is Object); // true
  print(myC is int); // false
  print(myC is String); // false

  myC.printName(); // Hello World
  print(myC.printName.runtimeType); // Function
  print(myC.printName is Function); // true
  myC.printName2("Palash"); // Hello

  dynamic result = myC.add(10, 20); // 30
  print(result); // 30
  print(result.runtimeType); // int

  result = myC.addString("Hello", "World"); // HelloWorld
  print(result); // HelloWorld
  print(result.runtimeType); // String

  // List : A collection of items that can be of any type
  // List : A collection of items that can be of any type and can be accessed by index
  // List : A collection of items that can be of any type and can be accessed by index and can be modified
  // List : A collection of items that can be of any type and can be accessed by index and can be modified and can be iterated over and can be sorted and can be filtered and can be mapped and can be reduced and can be used as a queue and can be used as a stack and can be used as a set and can be used as a map and can be used as a dictionary
  // List : A collection of items that can be of any type and can be accessed by index and can be modified and can be iterated over and can be sorted and can be filtered and can be mapped and can be reduced and can be used as a queue and can be used as a stack and can be used as a set and can be used as a map and can be used as a dictionary and can be used as a list

  var list1 = [1, 2, 3, 4, 5]; // List of integers
  list1.add(70); // Add 70 to the list

  print(list1); // [1, 2, 3, 4, 5]
  print(list1.runtimeType); // List<int>
  print(list1 is List); // true

  var list2 = [1, "Hello", "World", 2, 3, 4];
  print(list2); // [Hello, World, 2, 3, 4]
  print(list2.runtimeType); // List<dynamic>
  print(list2 is List); // true
  print(list2 is String); // false

  var names = [];
  names.addAll(list1);
  names.addAll(list2);
  print(names); // [1, 2, 3, 4, 5, Hello, World, 2, 3, 4]
  names.insert(2, 100); // Insert 100 at index 2
  print(names); // [1, 2, 100, 3, 4, 5, Hello, World, 2, 3, 4]

  names.insertAll(2, list1); // Insert list1 at index 2
  print(
    names,
  ); // [1, 2, 1, 2, 3, 4, 5, 70, 100, 3, 4, 5, 70, 1, Hello, World, 2, 3, 4]
  names.remove(100); // Remove 100 from the list
  print(names); // [1, 2, 3, 4, 5, Hello, World, 2, 3, 4]
  print(2400 + 1000 + 1900 + 242 + 3000);
  names[1] = 100; // Update index 1 to 100
  print(names); // [1, 100, 3, 4, 5, Hello, World, 2, 3, 4]
  names.replaceRange(0, 6, [100, 200]); // Replace index 0 to 2 with 100 and 200
  print(names); // [100, 200, 3, 4, 5, Hello, World, 2, 3, 4]

  names.removeLast(); // Remove last element from the list
  names.removeAt(1);
  print(names); // [100, 3, 4, 5, Hello, World, 2, 3, 4]
  names.removeRange(0, 2); // Remove index 0 to 2 from the list
  print(names); // [Hello, World, 2, 3, 4]
  print(names.length); // 5
  print(names.isEmpty); // false
  print(names.first); // 70
  print(names.last); // 3
  print(names[0]); // 70
  print("Second element is ${names[1]}"); // Second element is 3

  // Maps : A collection of key-value pairs that can be of any type
  // Maps : A collection of key-value pairs that can be of any type and can be accessed by key
  // Maps : A collection of key-value pairs that can be of any type and can be accessed by key and can be modified
  // Maps : A collection of key-value pairs that can be of any type and can be accessed by key and can be modified and can be iterated over and can be sorted and can be filtered and can be mapped and can be reduced and can be used as a queue and can be used as a stack and can be used as a set and can be used as a map and can be used as a dictionary
  // Maps : A collection of key-value pairs that can be of any type and can be accessed by key and can be modified and can be iterated over and can be sorted and can be filtered and can be mapped and can be reduced and can be used as a queue and can be used as a stack and can be used as a set and can be used as a map and can be used as a dictionary and can be used as a list

  // Map usually used to store key-value pairs and for auth purpose in API's

  var map1 = {
    "name": "John",
    "age": 30,
    "city": "New York",
    "average": 99.99,
    "isLogin": true,
  }; // Map of String and dynamic

  map1["name"] = "Palash"; // Update name to Palash
  map1["demo"] = "Hello"; // Add key-value pair to the map
  print(map1); // {name: John, age: 30, city: New York}
  print(map1['name']);

  var mapName = Map();

  mapName["name"] = "John"; // Add key-value pair to the map
  mapName["age"] = 30; // Add key-value pair to the map
  mapName["city"] = "New York"; // Add key-value pair to the map
  mapName["average"] = 99.99; // Add key-value pair to the map
  mapName["isLogin"] = true; // Add key-value pair to the map
  print(mapName); // {name: John, age: 30, city: New York}

  print(mapName.runtimeType); // Map<String, dynamic>
  print(mapName is Map); // true
  print(mapName is String); // false
  print(mapName.isEmpty);
  print(mapName.length); // 5
  print(mapName.keys); // (name, age, city, average, isLogin)
  print(mapName.values); // (John, 30, New York, 99.99, true)
  print(
    mapName.entries,
  ); // (name: John, age: 30, city: New York, average: 99.99, isLogin: true)
  print(mapName["name"]); // John
  print(mapName["age"]); // 30
  print(mapName.containsKey('name')); // trye
  print(mapName.containsValue(30)); // true
  print(mapName.containsValue(100)); // false
  print(mapName.containsKey('demo')); // false

  // Final and const

  // Final : A keyword that is used to declare a variable that can be changed at runtime but cannot be changed after it is assigned a value and can be used to create a constant list, map, or set

  // const : A keyword that is used to declare a variable that is a compile-time constant and cannot be changed and can be used to create a constant list, map, or set

  // var allows overridding when used as dynamic initia;lization
  // const : intialization is must
  // Final : can be intialized at runtime

  // final String name = "John"; // Final variable
  print(name); // John
  print(name.runtimeType); // String

  const name2 = "John"; // Const variable
  print(name2); // John
  print(name2.runtimeType); // String

  final name3 = ["John", "Doe", "Smith"]; // List of String
  print(name3); // [John, Doe, Smith]
  names.add("Palash");

  const name4 = ["John", "Doe", "Smith"]; // List of String
  print(name4); // [John, Doe, Smith]
  // name4.add("Hey"); // Error: Unsupported operation: Cannot add to an unmodifiable list
  print(name4.runtimeType); // List<String>

  // Conditional Programming : A programming paradigm that uses conditional statements to control the flow of the program

  // Conditional Programming : A programming paradigm that uses conditional statements to control the flow of the program and can be used to create a decision tree and can be used to create a state machine and can be used to create a finite state machine and can be used to create a pushdown automata and can be used to create a Turing machine and can be used to create a context-free grammar and can be used to create a context-sensitive grammar and can be used to create a regular grammar and can be used to create a context-free language and can be used to create a context-sensitive language and can be used to create a regular language and can be used to create a context-free automata and can be used to create a context-sensitive automata and can be used to create a regular automata

  // add program with diff operators of conditional programming here
  var no;
  no = 1;
  if (no == 1) {
    print("Hello World"); // Hello World
  } else if (no == 1) {
    print("Hello World"); // Hello World
  } else {
    print("Hello World"); // Hello World
  }

  // Switch case : A conditional statement that is used to control the flow of the program based on the value of a variable

  // Switch case : A conditional statement that is used to control the flow of the program based on the value of a variable and can be used to create a decision tree and can be used to create a state machine and can be used to create a finite state machine and can be used to create a pushdown automata and can be used to create a Turing machine and can be used to create a context-free grammar and can be used to create a context-sensitive grammar and can be used to create a regular grammar and can be used to create a context-free language and can be used to create a context-sensitive language and can be used to create a regular language and can be used to create a context-free automata and can be used to create a context-sensitive automata and can be used to create a regular automata

  switch (no) {
    case 1:
      print("Hello World 1"); // Hello World
      break;
    case 2:
      print("Hello World 2"); // Hello World
      break;
    default:
      print("Hello World 3"); // Hello World
  }

  // Loops in dart
  // Loops in dart : A programming paradigm that uses loops to control the flow of the program and can be used to create a decision tree and can be used to create a state machine and can be used to create a finite state machine and can be used to create a pushdown automata and can be used to create a Turing machine and can be used to create a context-free grammar and can be used to create a context-sensitive grammar and can be used to create a regular grammar and can be used to create a context-free language and can be used to create a context-sensitive language and can be used to create a regular language and can be used to create a context-free automata and can be used to create a context-sensitive automata and can be used to create a regular automata

  for (int i = 0; i < 10; i++) {
    print(i); // 0 1 2 3 4 5 6 7 8 9
  }

  do {
    print("Hello World"); // Hello World
  } while (false); // false

   no = 0;
  while (no < 50) {
    print("Hello World"); // Hello World
    no += 1;
  } // false
}

class Human {
  // Constructor : A special method that is called when an object is created
  // Constructor : A special method that is called when an object is created and can take parameters
  // Constructor : A special method that is called when an object is created and can take parameters and can return a value
  Human();
}

// Variable : A named space in memory
// Data Type : A type of data that can be stored in a variable
// Data Type : int, double, String, bool, List, Map, Set, dynamic, var
// int : 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
// double : 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
// String : "Hello", "World", "Dart", "Flutter"
// bool : true, false
// List : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Map : {"name": "John", "age": 30, "city": "New York"}
// Set : {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

class myClass {
  myClass() {
    // Constructor : A special method that is called when an object is created
    // Constructor : A special method that is called when an object is created and can take parameters
    // Constructor : A special method that is called when an object is created and can take parameters and can return a value
    // print(objectCreated); // Object created
    print("myClass Object created"); // Object created
  }
  void printName() {
    print("Hello World");
  }

  void printName2(String name) {
    print("Hello $name");
  }

  int add(int a, int b) {
    return (a + b); // after return statement code is called unreachable code or dead code
    print("Hello this is now unreachable"); // dead code
    print("Hello World"); // dead code
  }

  String addString(String a, String b) {
    return (a + b); // after return statement code is called unreachable code
  }
}
