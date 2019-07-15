import 'package:flutter/material.dart';

import 'screen/favorite/favorite_screen.dart';
import 'screen/search/search_screen.dart';

//import 'screen/favorite/favorite_screen.dart';
//import 'screen/search/search_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => SearchScreen(),
      '/favorite': (context) => FavoriteScreen(),
    },
  ));
}