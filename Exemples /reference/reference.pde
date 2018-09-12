int i = 80; // Global scope

void setup(){
  size(1, 1); 
  
  primitiveTypes(); // Executing a function
  conditions();
  loops();
  functions();
}

void primitiveTypes(){
  // Primitive types
  // Declaring variables
  
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
}

void conditions() {
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
}

void loops(){
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

void functions() {
  // Return type
  // Arguments
  // Scope
    // Program always checks most local scope and then looks more globally
  
  int result = functionWithReturnType();
  println(result);
  
  int result2 = functionWithArgumentsMultiplyByTwo(4);
  println(result2);
  
  scopeExample(10);
  println(i);
}

int functionWithReturnType(){
  return 42;
}

// return type - int, argument n - int
int functionWithArgumentsMultiplyByTwo(int n) {
  return n * 2;
}

// Declaration as an argument
// The 10 passed in the argument becomes i
void scopeExample(int i){
  // int i = 10;
  
  // Here i exists
  // i does not exist outside of this block
  println(i);
}

// Function example
// (Return type - void) function name
// void for regrouping certain actions
void doSomething() {
  println("Do something");
}