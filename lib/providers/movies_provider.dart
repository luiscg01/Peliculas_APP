import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier{

  MoviesProvider(){
    print('MoviesProvider inicializando');
  }

  getOnDisplayMovies() async {
    print('getOnDisplayProvider');
  }

}