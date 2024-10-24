

class Movie {
  String title;
  String backDropPath;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAverage;

  Movie({
    required this.title,
    required this.backDropPath,
    required this.overview,
    required this.posterPath,
    required  this.releaseDate,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    //************* TO ACCESS EACH WHAT WE WANT FROM RETURNED API *****************/
    /************* WHAT WE WROTE BETWEEN [] EXACTLY THE SAME AS WHAT WRITTEN IN JSON KEY ************/
    return Movie(
        title: json["title"],
        backDropPath: json["backdrop_path"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        releaseDate: json["release_date"],
        voteAverage: json["vote_average"]);
  }
  //******** WE CAN ALSO TO BE MORE SAFETY WRITE **********/
  //title: json["title"] as String,
  //OR
  //title: json["title"] ?? "some title", in case something error occured

  //****** NOW IF WE SEND TO JSON ********/
  //Map<String, dynamic> tojson => {"title": title}
  //يعني عكس الاستلام بالضبط الي نستلمو يصير هو الي ينرسل
}
