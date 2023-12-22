// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'movie_dto.dart';

class MovieDTOMapper extends ClassMapperBase<MovieDTO> {
  MovieDTOMapper._();

  static MovieDTOMapper? _instance;
  static MovieDTOMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MovieDTOMapper._());
      GenreDTOMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MovieDTO';

  static bool _$adult(MovieDTO v) => v.adult;
  static const Field<MovieDTO, bool> _f$adult = Field('adult', _$adult);
  static String _$backdropPath(MovieDTO v) => v.backdropPath;
  static const Field<MovieDTO, String> _f$backdropPath =
      Field('backdropPath', _$backdropPath, key: 'backdrop_path');
  static List<GenreDTO>? _$genres(MovieDTO v) => v.genres;
  static const Field<MovieDTO, List<GenreDTO>> _f$genres =
      Field('genres', _$genres, opt: true);
  static int _$id(MovieDTO v) => v.id;
  static const Field<MovieDTO, int> _f$id = Field('id', _$id);
  static String _$originalLanguage(MovieDTO v) => v.originalLanguage;
  static const Field<MovieDTO, String> _f$originalLanguage =
      Field('originalLanguage', _$originalLanguage, key: 'original_language');
  static String _$originalTitle(MovieDTO v) => v.originalTitle;
  static const Field<MovieDTO, String> _f$originalTitle =
      Field('originalTitle', _$originalTitle, key: 'original_title');
  static String _$overview(MovieDTO v) => v.overview;
  static const Field<MovieDTO, String> _f$overview =
      Field('overview', _$overview);
  static String _$posterPath(MovieDTO v) => v.posterPath;
  static const Field<MovieDTO, String> _f$posterPath =
      Field('posterPath', _$posterPath, key: 'poster_path');
  static String _$releaseDate(MovieDTO v) => v.releaseDate;
  static const Field<MovieDTO, String> _f$releaseDate =
      Field('releaseDate', _$releaseDate, key: 'release_date');
  static String _$title(MovieDTO v) => v.title;
  static const Field<MovieDTO, String> _f$title = Field('title', _$title);
  static double _$voteAverage(MovieDTO v) => v.voteAverage;
  static const Field<MovieDTO, double> _f$voteAverage =
      Field('voteAverage', _$voteAverage, key: 'vote_average');
  static int _$voteCount(MovieDTO v) => v.voteCount;
  static const Field<MovieDTO, int> _f$voteCount =
      Field('voteCount', _$voteCount, key: 'vote_count');

  @override
  final Map<Symbol, Field<MovieDTO, dynamic>> fields = const {
    #adult: _f$adult,
    #backdropPath: _f$backdropPath,
    #genres: _f$genres,
    #id: _f$id,
    #originalLanguage: _f$originalLanguage,
    #originalTitle: _f$originalTitle,
    #overview: _f$overview,
    #posterPath: _f$posterPath,
    #releaseDate: _f$releaseDate,
    #title: _f$title,
    #voteAverage: _f$voteAverage,
    #voteCount: _f$voteCount,
  };

  static MovieDTO _instantiate(DecodingData data) {
    return MovieDTO(
        adult: data.dec(_f$adult),
        backdropPath: data.dec(_f$backdropPath),
        genres: data.dec(_f$genres),
        id: data.dec(_f$id),
        originalLanguage: data.dec(_f$originalLanguage),
        originalTitle: data.dec(_f$originalTitle),
        overview: data.dec(_f$overview),
        posterPath: data.dec(_f$posterPath),
        releaseDate: data.dec(_f$releaseDate),
        title: data.dec(_f$title),
        voteAverage: data.dec(_f$voteAverage),
        voteCount: data.dec(_f$voteCount));
  }

  @override
  final Function instantiate = _instantiate;

  static MovieDTO fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MovieDTO>(map);
  }

  static MovieDTO fromJson(String json) {
    return ensureInitialized().decodeJson<MovieDTO>(json);
  }
}

mixin MovieDTOMappable {
  String toJson() {
    return MovieDTOMapper.ensureInitialized()
        .encodeJson<MovieDTO>(this as MovieDTO);
  }

  Map<String, dynamic> toMap() {
    return MovieDTOMapper.ensureInitialized()
        .encodeMap<MovieDTO>(this as MovieDTO);
  }

  MovieDTOCopyWith<MovieDTO, MovieDTO, MovieDTO> get copyWith =>
      _MovieDTOCopyWithImpl(this as MovieDTO, $identity, $identity);
  @override
  String toString() {
    return MovieDTOMapper.ensureInitialized().stringifyValue(this as MovieDTO);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            MovieDTOMapper.ensureInitialized()
                .isValueEqual(this as MovieDTO, other));
  }

  @override
  int get hashCode {
    return MovieDTOMapper.ensureInitialized().hashValue(this as MovieDTO);
  }
}

extension MovieDTOValueCopy<$R, $Out> on ObjectCopyWith<$R, MovieDTO, $Out> {
  MovieDTOCopyWith<$R, MovieDTO, $Out> get $asMovieDTO =>
      $base.as((v, t, t2) => _MovieDTOCopyWithImpl(v, t, t2));
}

abstract class MovieDTOCopyWith<$R, $In extends MovieDTO, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, GenreDTO, GenreDTOCopyWith<$R, GenreDTO, GenreDTO>>?
      get genres;
  $R call(
      {bool? adult,
      String? backdropPath,
      List<GenreDTO>? genres,
      int? id,
      String? originalLanguage,
      String? originalTitle,
      String? overview,
      String? posterPath,
      String? releaseDate,
      String? title,
      double? voteAverage,
      int? voteCount});
  MovieDTOCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MovieDTOCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MovieDTO, $Out>
    implements MovieDTOCopyWith<$R, MovieDTO, $Out> {
  _MovieDTOCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MovieDTO> $mapper =
      MovieDTOMapper.ensureInitialized();
  @override
  ListCopyWith<$R, GenreDTO, GenreDTOCopyWith<$R, GenreDTO, GenreDTO>>?
      get genres => $value.genres != null
          ? ListCopyWith($value.genres!, (v, t) => v.copyWith.$chain(t),
              (v) => call(genres: v))
          : null;
  @override
  $R call(
          {bool? adult,
          String? backdropPath,
          Object? genres = $none,
          int? id,
          String? originalLanguage,
          String? originalTitle,
          String? overview,
          String? posterPath,
          String? releaseDate,
          String? title,
          double? voteAverage,
          int? voteCount}) =>
      $apply(FieldCopyWithData({
        if (adult != null) #adult: adult,
        if (backdropPath != null) #backdropPath: backdropPath,
        if (genres != $none) #genres: genres,
        if (id != null) #id: id,
        if (originalLanguage != null) #originalLanguage: originalLanguage,
        if (originalTitle != null) #originalTitle: originalTitle,
        if (overview != null) #overview: overview,
        if (posterPath != null) #posterPath: posterPath,
        if (releaseDate != null) #releaseDate: releaseDate,
        if (title != null) #title: title,
        if (voteAverage != null) #voteAverage: voteAverage,
        if (voteCount != null) #voteCount: voteCount
      }));
  @override
  MovieDTO $make(CopyWithData data) => MovieDTO(
      adult: data.get(#adult, or: $value.adult),
      backdropPath: data.get(#backdropPath, or: $value.backdropPath),
      genres: data.get(#genres, or: $value.genres),
      id: data.get(#id, or: $value.id),
      originalLanguage:
          data.get(#originalLanguage, or: $value.originalLanguage),
      originalTitle: data.get(#originalTitle, or: $value.originalTitle),
      overview: data.get(#overview, or: $value.overview),
      posterPath: data.get(#posterPath, or: $value.posterPath),
      releaseDate: data.get(#releaseDate, or: $value.releaseDate),
      title: data.get(#title, or: $value.title),
      voteAverage: data.get(#voteAverage, or: $value.voteAverage),
      voteCount: data.get(#voteCount, or: $value.voteCount));

  @override
  MovieDTOCopyWith<$R2, MovieDTO, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MovieDTOCopyWithImpl($value, $cast, t);
}
