import 'package:flutter/material.dart';
import '../classes/movies_provider.dart';
import '../classes/movie_model.dart';

class MoviesListing extends StatefulWidget {
  const MoviesListing({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MoviesListingState createState() => _MoviesListingState();
}

class _MoviesListingState extends State<MoviesListing> {
  List<MovieModel> movies = <MovieModel>[];
  // this is the line from the training that errors out
  // List<MovieModel> movies = List<MovieModel>();

//  dynamic movies;

  fetchMovies() async {
    var data = await MoviesProvider.getJson();
    setState(() {
      List<dynamic> results = data['results'];
      results.forEach((element) {
        movies.add(MovieModel.fromJson(element));
      });
//      movies = data['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    fetchMovies();
    return Scaffold(
      body: ListView.builder(
// this gives a lint error about movies can never be null so stmt always false
//        itemCount: movies == null ? 0 : movies.length,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Title: ${movies[index].title} \nOverview: ${movies[index].vote_average}'),
            //child: Text(movies[index].title)
//            child: Text(movies[index]["title"]),
//            child: Text(movies[index]["overview"]),
//            child: Text('${movies[index]["id"]}'),
          );
        },
      ),
// this was the initial code before doing json.decode
//      body: SingleChildScrollView(
//        child: movies != null
//            ? Text("TMDB Api response\n $movies")
//            : const Text("Loading API response"),
//    ),
    );
  }
}
