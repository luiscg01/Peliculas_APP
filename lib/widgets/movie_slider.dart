// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore
        children: [
          // ignore: prefer_const_constructors
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:  Text('Populares', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ),
            Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => _MoviePoster()
            ),
          ),
        ],
      )
    );
  }
}

class _MoviePoster extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: Colors.blue,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}