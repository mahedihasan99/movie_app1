import 'package:flutter/material.dart';

import '../db/movie_db.dart';
import '../models/movies.dart';
import 'home_page.dart';

class MovieDetailsPage extends StatefulWidget {
  static const String routeName = '/details';
  MovieDetailsPage();

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  late Movie movie;
  @override
  void initState() {

  }

  @override
  void didChangeDependencies() {
    movie = ModalRoute.of(context)!.settings.arguments as Movie;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: true,
            //pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(movie.name!),
              background: Hero(
                  tag: movie.id!,
                  child: Image.asset(movie.image!, width: double.maxFinite, height: 300, fit: BoxFit.cover,)),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              MovieItem(movie: movie),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(description),
              )
            ]),
          )
        ],
      ),
    );
  }


}
