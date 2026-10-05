
import 'package:flutter/material.dart';
import 'package:secund_app/screens/conter_state.dart';
import 'package:secund_app/screens/home_screen.dart';

void main(){
  runApp( MyApp());//runApp is a function that receive a widget and run the app, MyApp is a widget that is the root of the app
}


class MyApp extends StatelessWidget{

  const MyApp({super.key});


  @override
  Widget build(BuildContext context){
    /*
      In this section I talking about what is a context, a context is an object that contains 
      information about the location of a widget in the widget tree, it is used to access 
      the theme, localization, and other inherited widgets. It is passed to the build method 
      of a widget and can be used to access the context of the parent widget.
    */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterScreen()
      
      ,//here we are calling the HomeScreen widget that we created in the home_screen.dart file
    );
  }
}