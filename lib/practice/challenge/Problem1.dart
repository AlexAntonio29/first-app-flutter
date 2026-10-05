
import 'dart:io';

//In this problem a create a program that show the day of the week depending of the number


void main(){

  List<String> daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];


  print("Enter a number between 1 and 7:");

  int? number = int.parse(stdin.readLineSync()!);

  switch (number) {
    case 1:
      print("The day of the week is: ${daysOfWeek[0]}");
      break;
    case 2:
      print("The day of the week is: ${daysOfWeek[1]}");
      break;
    case 3:
      print("The day of the week is: ${daysOfWeek[2]}");
      break;
    case 4:
      print("The day of the week is: ${daysOfWeek[3]}");
      break;
    case 5:
      print("The day of the week is: ${daysOfWeek[4]}");
      break;
    case 6:
      print("The day of the week is: ${daysOfWeek[5]}");
      break;
    case 7:
      print("The day of the week is: ${daysOfWeek[6]}");
      break;
    default:
      print("Invalid number. Please enter a number between 1 and 7.");
  }
}
