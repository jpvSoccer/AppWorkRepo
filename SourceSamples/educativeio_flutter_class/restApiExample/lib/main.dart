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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoviesListing(),
    );
  }
}

class MoviesListing extends StatefulWidget {
  const MoviesListing({Key? key}) : super(key: key);
  @override
  _MoviesListingState createState() => _MoviesListingState();
}

class _MoviesListingState extends State<MoviesListing> {
  var movies;
  static dynamic getJason() async {
    final String apiEndPoint =
        "http://api.themoviedb.org/3/discover/movie?api_key=${apiKey}&sort_by=popularity.desc";
    final apiResponse = await http.get(Uri.parse(apiEndPoint));
    return apiResponse;
  }

  fetchMovies() async {
    var data = await getJason();
    setState(() {
      movies = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    fetchMovies();
    return Scaffold(
      body: SingleChildScrollView(
        child: movies != null
            ? Text("TMDB Api response\n $movies")
            : Text("Loading API response"),
      ),
    );
  }
}
