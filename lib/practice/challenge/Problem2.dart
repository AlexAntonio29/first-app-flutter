import 'dart:io';
//Create a main menu that selected what problem resolve, the user can select the problem by entering a number, the program will call the function that resolve.

void main(){
  int option = 0;
  do{ 

    print("Select a problem to resolve:");
    print("1. Calcute the factorial of a number");
    print("2. Print the sum of the first natural numbers");
    print("3. Exit");

    option = int.parse(stdin.readLineSync()!);

    switch(option){
      case 1:
        calculateFactorial();
        break;
      case 2:
        sumOfNaturalNumbers();
        break;
      case 3:
        print("Exiting...");
        break;
      default:
        print("Invalid option. Please select a valid option.");
    }


  }
  while(option != 3);
}


void calculateFactorial(){
  print("Enter a number to calculate its factorial:");
  int? number = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  for(int i = 1; i <= number; i++){
    factorial *= i;
  }
  print("The factorial of $number is: $factorial");
}

void sumOfNaturalNumbers(){
  print("Enter a number to calculate the sum of the first natural numbers:");
  int? number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for(int i = 1; i <= number; i++){
    sum += i;
  }
  print("The sum of the first $number natural numbers is: $sum");
}
