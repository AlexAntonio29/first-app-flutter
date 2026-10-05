import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
 
  //StatelessWidget is a widget that does not have state, it means that it does not change its content when the user interact with it
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}



class _CounterScreenState extends State<CounterScreen> {

   int counter = 0; // this is a variable that will be used to count the number of times the button is pressed
  

  void addCounter(int value) {
     // this is a method that will be used to update the state of the widget, it will call the build method again
    switch(value){
      case 0:
        counter--;
        break;
      case 1:
        counter = 0;
        break;
      case 2:
        counter++;
        break;
    }

    setState((){}); // this is a method that will be used to update the state of the widget, it will call the build method again
  }
// this is a constructor that receive a key, super.key is a way to pass the key to the parent class
  @override// in POO override is a keyword that indicate that the method is override from the parent class
  Widget build(BuildContext context) {

    TextStyle fontSize30 = TextStyle(fontSize: 30);
    TextStyle fontSize20 = TextStyle(fontSize: 30);

    

    return Scaffold(//Scaffold is for create a interface with a appbar, body, drawer, etc
      
    

      appBar: AppBar(//AppBar is a widget that create a appbar
        title: const Text('HomeScreen'),//title is the content of the appbar, Text is a widget that display a text
        backgroundColor: Colors.blue,//backgroundColor is the color of the appbar, Colors is a class that contain all the colors
        foregroundColor: Colors.white,//foregroundColor is the color of the text in the appbar, Colors is a class that contain all the colors
        elevation: 0.1,//elevation is the shadow of the appbar, 0 means that there is no shadow
      ),
      
      body:  Center(//body is the main content of the screen, Center is a widget that center its child
        child: Column(// child is the content of the Center widget, Text is a widget that display a text
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Text('Welcome to the Home Screen!', style: fontSize30),
            Text('$counter', style: fontSize20),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatinActionButtons(counter: addCounter,
      )
    );
  }
}

class FloatinActionButtons extends StatelessWidget {

  final Function counter;
  const FloatinActionButtons({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
    
    
                  FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: ()=>counter(0),),
    
        
    
        FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: ()=>counter(1),),
    
      
        
                  FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: ()=>counter(2),)
    
      ],
    );
  }
}