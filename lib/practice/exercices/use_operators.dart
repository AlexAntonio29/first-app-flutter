
import 'dart:io'; //this library is used to read input from the user.
//In this sectios, I create a small calculator with logic operators, I use if, switch, etc.


void main() {
  useOperators();
}
double getOperation(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        print('Error: Division by zero is not allowed.');
        return double.nan; // Return NaN to indicate an error
      }
      return num1 / num2;
    default:
      print('Invalid operator. Please use +, -, *, or /.');
      return double.nan; // Return NaN to indicate an error
  }
}

void useOperators() {

  //here I create a main function that will be used to call the useOperators function

  print('Welcome to the calculator!');
  print('Please enter the first number:');
  String? input1 = stdin.readLineSync(); //this line is used to read the input from the user, it will return a string
  print ('Please enter the second number:');
  String? input2 = stdin.readLineSync(); //this line is used to read the input from the user, it will return a string

  //here I validate if the input is a number or not.

  if(input1 == null || input2 == null) {
    print('Invalid input. Please enter valid numbers.');
    return;
  }

  double num1 = double.parse(input1);
  double num2 = double.parse(input2);

  if(num1.isNaN || num2.isNaN) {
    print('Invalid input. Please enter valid numbers.');
    return;
  } else{
    print("Please enter the number of the operation you want to perform: \n 1. Addition (+) \n 2. Subtraction (-) \n 3. Multiplication (*) \n 4. Division (/)");
    String? operatorInput = stdin.readLineSync(); //this line is used to read the

    double result=getOperation(num1, num2, operatorInput ?? '');

    if(result.isNaN) {
      print('Error: Invalid operation.');
    } else {
      print('The result is: $result');
    }
  }
}