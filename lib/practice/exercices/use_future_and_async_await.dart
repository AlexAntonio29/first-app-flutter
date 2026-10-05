 
void greetUser() async{
  
  final name= await fetchUserName();
  addHello(name);
  goodBye(name);
  
}

Future<String> fetchUserName()=> Future.delayed(Duration(seconds:1),()=>"Alex");

void addHello(String name) async =>print(await Future.delayed(Duration(seconds:1), ()=>"Hello $name"));

void goodBye(String name) async=> print(await Future.delayed(Duration(seconds:4),()=>"GoodBye $name"));





Future<String> fetchRole()=> Future.delayed(Duration(seconds: 1), () => "Initial the order");


Future<int> fetchLoginAmount(int i) async => await Future.delayed(Duration(seconds: 1), () => i);




void reportUserRole() async {
  
    var message = await fetchRole();
     print(message);
  
    for(int i=1;i<=4;i++){
      var number=await fetchLoginAmount(i);
      
      print(number);
    }
  
  greetUser();
}


void main() {
  print("main: ");

  reportUserRole();
  //for (int i = 1; i <= 4; i++) print("$fetchLoginAmount(i)");
}