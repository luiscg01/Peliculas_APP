import  'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  

  Widget build (BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Peliculas de cine'),
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.search_outlined),
          onPressed: (){},
        ),
      ]
    ),
    body: SingleChildScrollView(
      child: Column(
      children: [

        //tarjetas principales
        cardsSwiper(),

        //slider de peliculas
         // ignore: prefer_const_constructors
         MovieSlider(),
      ],
    ),
    )
   );
  }
}