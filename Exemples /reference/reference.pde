void setup(){
  size(1, 1); 
  
  // Primitive types
  int myInteger = 10; 
  float myFloat = 10.0; 
  boolean myBoolean = false;
  
  // Rarely useful
  double myDouble = 10.0; // more precise float
  char myCharacter = 'a'; // useful for keyboard input
  
  println(myInteger / 3);
  println(myFloat / 3);
  println(myDouble / 3);
  
  // Object types
  // Primitives + methods (function)
  // - Can have methods / functions
  
  String myString = "Hello world";
  println(myString);
  myString.toUpperCase(); // example of a method
  
  // Conditions
  // Expressions which result in either true or false
  // >=, <=, == int, float
  
  boolean res1 = 10 < 20;
  boolean res2 = 10 == 20; // is 10 equal to 20? -> No (false)
  boolean res3 = 10 >= 20;
  
  // boolean
  // && - and, || - or
  
  boolean blond = true;
  boolean old = false;
  
  // tibor
  boolean test1 = blond && old; // false
  boolean test2 = blond || old; // true
 
  // Loops
  
  // While - tant que
  // while (CONDITION) { // something }
  // Let's do something 10 times
  
  int _i = 0;
  
  while (_i < 10) {
    doSomething();
    _i++;
  }
  
  // For loop
  
  for (int i = 0; i < 10; i++) {
    doSomething();
  }
  
}

void doSomething() {
  println("Do something");
}