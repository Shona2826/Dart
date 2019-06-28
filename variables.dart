import 'dart:html';
import 'dart:math';

void main() {
	varTest();
	mathTest();
	
}

void varTest(){
		
	// There 6 variable types in Dart : Integers, Floats, Booleans,
	// Strings, Lists and Maps
	// We declare a variable like this if you want to be able to switch
	// data types (Every Variable is an Object)
	var myName = "Suman";
 
	// You can also define a static type (Use " or ')
	String randString = "Random String";
 
	// A boolean holds the value true or false
	bool canVote = true;
 
	// Declare an integer (JavaScript numbers are all floats)
	int maxInt = 9007199254740992; // Min Val = -9007199254740992
 
	// Declare a double with 15 digit precision
	double piVal = 3.141592653589793; 

	querySelector("#output").text = "Max Int : ${maxInt +1}\nPI: ${piVal + 0.0000000000001}";

	// Declare a random list
	List randList = [1,2,3,4];
 
	// Declare a random Map made up from key value pairs
	Map randMap = {1: "Tom Smith", 2: "Betty Bryant"};
 
}
void mathTest(){
	var random = new Random();
	var number = 6.45;
	querySelector("#output").text = "5.0 + 4.0 = ${5.0 + 4.0}\n5.0 - 4.0 = ${5.0 - 4.0}\n5.0 * 4.0 = ${5.0 * 4.0}\n5.0 / 4.0 = ${5.0 / 4.0}\n5.0 % 4.0 = ${5.0 % 4.0}\ne^3 = ${exp(3)}\nlog(1000) = ${log(1000)}\nmax(10,5) = ${max(10,5)}\nmin(10,5) = ${min(10,5)}\n10^5 = ${pow(10,5)}\nsqrt(81) = ${sqrt(81)}\nround(6.45) = ${number.round()}\nRandom Numbers : ${random.nextInt(100)}, ${random.nextInt(100)}, ${random.nextInt(100)}\n";

}

