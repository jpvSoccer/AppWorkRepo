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

  fetchMoviesData() async {
    var data = await MoviesProvider.getJson();
    //keys: (page, results, total_pages, total_results)
    //print("${data.keys} ${data.toString()}");
    //int page = data['page'];
    //int total_pages = data['total_pages'];
    //int total_results = data['total_results'];
    //print("data length ${data.length}");
    //print("data keys ${data.keys}");
    //print("page $page");
    //print("total pages $total_pages");
    //print("total results $total_results");
    setState(() {
      List<dynamic> results = data['results'];
      Map<String, dynamic> testFirst = results.first;
      print(testFirst);
      print("JPV isEmpty ${testFirst.isEmpty}");
      print("JPV isNotEmpty ${testFirst.isNotEmpty}");
      print("JPV length ${testFirst.length}");
      print("JPV keys\n${testFirst.keys}");
      print("JPV values\n${testFirst.values}");
      testFirst.forEach((key, value) {
        print("JPV key, value >> $key $value");
      });
      results.forEach((element) {
        movies.add(MovieModel.fromJson(element));
      });
//
// convert list to jason
//List<String> names = ["John", "Krisna", "Rahul", "Maichel"];
//String jsonstring = json.encode(names);
//print(jsonstring);
//output: ["John","Krisna","Rahul","Maichel"]
    });
  }

  @override
  Widget build(BuildContext context) {
    fetchMoviesData();
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
