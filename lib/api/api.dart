import 'dart:convert';

import 'package:movie/constant.dart';
import 'package:movie/models/movie_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      "https://api.themoviedb.org/3/trending/movie/day?api_key=${Constant.apiKey}";
  static const _topRatedUrl =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=${Constant.apiKey}";
  static const _upcomingUrl =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=${Constant.apiKey}";

  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)["results"] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("something went wrong!!");
    }
  }

  Future<List<Movie>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)["results"] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("something went wrong!!");
    }
  }

  Future<List<Movie>> getupcomingMovies() async {
    final response = await http.get(Uri.parse(_upcomingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)["results"] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("something went wrong!!");
    }
  }
}
