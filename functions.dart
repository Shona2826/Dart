import 'dart:html';
import 'dart:math';

void main() {
	funcTest();

	
}
void funcTest(){
  String output = "";
 
  // You call a function by name followed by parameters
  output += "3 * 34 = ${getMult(3,34)}\n";
 
  // You can define single line functions
  times2(num) => num * 2;
 
  output += "56 * 2 = ${times2(56)}\n";
 
  output += addList(1, 10);
 
  // Passing functions as parameters
  times3(num) => num * 3;
 
  output += "67 * 2 = ${multiply(67, times2)}\n";
  output += "67 * 3 = ${multiply(67, times3)}\n";
 
  // Recursive Function
  output += "Factorial of 4 = ${factorial(4)}\n";
 
  querySelector("#output").text = output;
}

// You have to define the data types of parameters
int getMult(int num1, int num2){
  // Variable val is only available in this function (Local Var)
  int val = num1 * num2;
 
  // return a value to the statement that called this function
  return val;
}
 
// To make parameters optional surround with [ ] separated by commas
// You can, but don't have to add a default value
String addList(int start, [int quantity = 1]){
  String strList = "";
  for(int i = 1; i <= quantity; i++){
    strList += "${i}, ";
  }
  return strList + "\n";
}
 
// We can pass functions as parameters
int multiply(int num, func){
  return func(num);
}
 
// Recursive functions call themselves
int factorial(int num){
  if(num <= 1){
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}