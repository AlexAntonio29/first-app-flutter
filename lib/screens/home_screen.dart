import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {//StatelessWidget is a widget that does not have state, it means that it does not change its content when the user interact with it
  const HomeScreen({super.key});// this is a constructor that receive a key, super.key is a way to pass the key to the parent class

  


  @override// in POO override is a keyword that indicate that the method is override from the parent class
  Widget build(BuildContext context) {

    TextStyle fontSize30 = TextStyle(fontSize: 30);
    TextStyle fontSize20 = TextStyle(fontSize: 20);

    String textView = "This is a simple Flutter app.";

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
            Text(textView, style: fontSize20),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          textView = "You pressed the button!";
          print("pressed");
      },)
    );
  }
}