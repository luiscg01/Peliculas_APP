
import 'package:flutter/material.dart';
import 'package:peliculas/screens/details_screen.dart';
import 'package:peliculas/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomeScreen(),   
        'details': ( _ ) => DetailsScreen(),   
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: appBarTheme(
          color: Colors.indigo
        )
      ),
    );
  }
  
  appBarTheme({required MaterialColor color}) {}
}