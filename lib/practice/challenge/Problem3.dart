

//In this script I don't need a input value, but I return the value when the program finish
//so I need to use the Future function for return the value again.

void main(){

  print("Start the program");

  getData();

  
}

Future<void> getData() async{
  for(int i = 1; i <= 100; i++){
    await Future.delayed(Duration(seconds: 1), (){
      if(i%3==0 && i%5==0 ) print ("FLIFLO");
      else if(i%3==0) print ("FLI");
      else if(i%5==0 )print("FLO");
      else print(i);
    });


  }


  print("Return the value");

  getData();
}