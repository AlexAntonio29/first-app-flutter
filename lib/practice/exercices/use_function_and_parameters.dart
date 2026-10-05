//in this section I will create a simple function that use parameter and incogitive funtion,
//I use the required parameters and optional parameters, as well as the parameters with permitted values NULL

void main (){
  //create a simple function 
  simpleFuntion();
  //create a function with a simple parameter
  simpleParameterFunction("Alexis");
  //create a function with a required parameter
   requiredParemeterFunction("Alexis");
  //create a function with an optional parameter
  optionalParameterFunction("Alexis", "Gonzalez");
  //create a function with a parameter with permitted values NULL
  nullParameterFunction("Alexis", null);
  //create a incogitive function
  ()=> print('This is an incogitive function');
  /*
    I need understand that the incogitive function is to recalled the same function 
    so I can use it in the same function or in another function, this is a way to create a function that can be used in different places without having to create a new function.
  */

//create a function with a return a value
  String message = returnFunction("Alexis");

  print(message);
}




void simpleFuntion(){
  print('This is a simple function');
}

void simpleParameterFunction(String name){
  print('This is a simple function with a parameter: $name');
}

void requiredParemeterFunction(String name){
  print('This is a function with a required parameter: $name');
}

void optionalParameterFunction(String name, [String? lastName]){
  print('This is a function with an optional parameter: $name $lastName');
}

void nullParameterFunction(String name, String? lastName){
  print('This is a function with a parameter with permitted values NULL: $name $lastName');
}

String returnFunction(String name){
  return "getter my name is $name";
}


