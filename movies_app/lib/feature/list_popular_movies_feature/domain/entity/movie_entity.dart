class MovieEntity {
  MovieEntity(
      {required this.adult,
      required this.backdropPath,
      required this.genres,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.voteAverage,
      required this.voteCount});

  final bool adult;
  final String backdropPath;
  final List<String> genres;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final DateTime releaseDate;
  final String title;
  final double voteAverage;
  final int voteCount;
}
