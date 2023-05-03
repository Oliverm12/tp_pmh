import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project_1/models/favorites.dart';
import 'package:project_1/screens/favorites.dart';
import 'package:project_1/screens/home.dart';

void main() {
  runApp(project_1());
}

class project_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          FavoritesPage.routeName: (context) => FavoritesPage(),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
