import 'package:flutter/material.dart';

import 'pages/details_page.dart';
import 'pages/home_page.dart';
import 'pages/new_movie_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName : (context) => HomePage(),
        NewMoviePage.routeName : (context) => NewMoviePage(),
        MovieDetailsPage.routeName : (context) => MovieDetailsPage(),
      },
    );
  }
}

