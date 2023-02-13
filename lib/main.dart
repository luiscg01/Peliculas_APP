
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
}