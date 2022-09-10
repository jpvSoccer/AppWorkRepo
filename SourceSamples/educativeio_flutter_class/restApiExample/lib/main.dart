//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(const MoviesApp());

const apiKey = "9b8a455a5496174ed03318441ba695bd";

class MoviesApp extends StatelessWidget {
  const MoviesApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoviesListing(),
    );
  }
}

class MoviesListing extends StatefulWidget {
  const MoviesListing({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MoviesListingState createState() => _MoviesListingState();
}

class _MoviesListingState extends State<MoviesListing> {
  dynamic movies;

  @override
  Widget build(BuildContext context) {
    fetchMovies();
    return Scaffold(
      body: ListView.builder(
        itemCount: movies == null ? 0 : movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(movies[index]["title"]),
          );
        },
      ),
//      body: SingleChildScrollView(
//        child: movies != null
//            ? Text("TMDB Api response\n $movies")
//            : const Text("Loading API response"),
//    ),
    );
  }

  fetchMovies() async {
    var data = await MoviesProvider.getJason();
    setState(() {
      movies = data['results'];
    });
  }
}

class MoviesProvider {
  static const String imagePathPrefix = 'https://image.tmdb.org/t/p/w500';

  static Future<Map> getJason() async {
    const String apiEndPoint =
        "http://api.themoviedb.org/3/discover/movie?api_key=$apiKey&sort_by=popularity.desc";
    final apiResponse = await http.get(Uri.parse(apiEndPoint));
    return json.decode(apiResponse.body);
  }
}
