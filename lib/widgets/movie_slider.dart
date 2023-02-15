// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
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

          SizedBox(height: 5),

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
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context,'details', arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/charmander.jpeg'),
                 image: NetworkImage('https://via.placeholder.com/300x400'),
                 width: 130,
                 height: 190,
                 fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 5),

          Text(
            'El retorno del jedi silvestre de monte cristo',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}