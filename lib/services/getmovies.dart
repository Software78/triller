import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:triller_zone/models/moviemodel.dart';
import 'package:triller_zone/utils/constants.dart';

class GetMovies {
  static Future<List<MovieModel>> getMovieInfo() async {
    var response = await http.get(
      Uri.parse('https://api.themoviedb.org/3/trending/2/day?api_key=$apiKey'),
    );

    var results = await jsonDecode(response.body)['results'] as List;
    var movies = results.map((e) => MovieModel.fromJson(e)).toList();

    return movies;
  }
}
