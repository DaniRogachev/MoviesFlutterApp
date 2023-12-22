// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'all_movies_dto.dart';

class AllMoviesDTOMapper extends ClassMapperBase<AllMoviesDTO> {
  AllMoviesDTOMapper._();

  static AllMoviesDTOMapper? _instance;
  static AllMoviesDTOMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AllMoviesDTOMapper._());
      MovieDTOMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AllMoviesDTO';

  static int _$page(AllMoviesDTO v) => v.page;
  static const Field<AllMoviesDTO, int> _f$page = Field('page', _$page);
  static List<MovieDTO> _$results(AllMoviesDTO v) => v.results;
  static const Field<AllMoviesDTO, List<MovieDTO>> _f$results =
      Field('results', _$results);
  static int _$totalPages(AllMoviesDTO v) => v.totalPages;
  static const Field<AllMoviesDTO, int> _f$totalPages =
      Field('totalPages', _$totalPages, key: 'total_pages');
  static int _$totalResults(AllMoviesDTO v) => v.totalResults;
  static const Field<AllMoviesDTO, int> _f$totalResults =
      Field('totalResults', _$totalResults, key: 'total_results');

  @override
  final Map<Symbol, Field<AllMoviesDTO, dynamic>> fields = const {
    #page: _f$page,
    #results: _f$results,
    #totalPages: _f$totalPages,
    #totalResults: _f$totalResults,
  };

  static AllMoviesDTO _instantiate(DecodingData data) {
    return AllMoviesDTO(
        page: data.dec(_f$page),
        results: data.dec(_f$results),
        totalPages: data.dec(_f$totalPages),
        totalResults: data.dec(_f$totalResults));
  }

  @override
  final Function instantiate = _instantiate;

  static AllMoviesDTO fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AllMoviesDTO>(map);
  }

  static AllMoviesDTO fromJson(String json) {
    return ensureInitialized().decodeJson<AllMoviesDTO>(json);
  }
}

mixin AllMoviesDTOMappable {
  String toJson() {
    return AllMoviesDTOMapper.ensureInitialized()
        .encodeJson<AllMoviesDTO>(this as AllMoviesDTO);
  }

  Map<String, dynamic> toMap() {
    return AllMoviesDTOMapper.ensureInitialized()
        .encodeMap<AllMoviesDTO>(this as AllMoviesDTO);
  }

  AllMoviesDTOCopyWith<AllMoviesDTO, AllMoviesDTO, AllMoviesDTO> get copyWith =>
      _AllMoviesDTOCopyWithImpl(this as AllMoviesDTO, $identity, $identity);
  @override
  String toString() {
    return AllMoviesDTOMapper.ensureInitialized()
        .stringifyValue(this as AllMoviesDTO);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AllMoviesDTOMapper.ensureInitialized()
                .isValueEqual(this as AllMoviesDTO, other));
  }

  @override
  int get hashCode {
    return AllMoviesDTOMapper.ensureInitialized()
        .hashValue(this as AllMoviesDTO);
  }
}

extension AllMoviesDTOValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AllMoviesDTO, $Out> {
  AllMoviesDTOCopyWith<$R, AllMoviesDTO, $Out> get $asAllMoviesDTO =>
      $base.as((v, t, t2) => _AllMoviesDTOCopyWithImpl(v, t, t2));
}

abstract class AllMoviesDTOCopyWith<$R, $In extends AllMoviesDTO, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MovieDTO, MovieDTOCopyWith<$R, MovieDTO, MovieDTO>>
      get results;
  $R call(
      {int? page, List<MovieDTO>? results, int? totalPages, int? totalResults});
  AllMoviesDTOCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AllMoviesDTOCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AllMoviesDTO, $Out>
    implements AllMoviesDTOCopyWith<$R, AllMoviesDTO, $Out> {
  _AllMoviesDTOCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AllMoviesDTO> $mapper =
      AllMoviesDTOMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MovieDTO, MovieDTOCopyWith<$R, MovieDTO, MovieDTO>>
      get results => ListCopyWith($value.results,
          (v, t) => v.copyWith.$chain(t), (v) => call(results: v));
  @override
  $R call(
          {int? page,
          List<MovieDTO>? results,
          int? totalPages,
          int? totalResults}) =>
      $apply(FieldCopyWithData({
        if (page != null) #page: page,
        if (results != null) #results: results,
        if (totalPages != null) #totalPages: totalPages,
        if (totalResults != null) #totalResults: totalResults
      }));
  @override
  AllMoviesDTO $make(CopyWithData data) => AllMoviesDTO(
      page: data.get(#page, or: $value.page),
      results: data.get(#results, or: $value.results),
      totalPages: data.get(#totalPages, or: $value.totalPages),
      totalResults: data.get(#totalResults, or: $value.totalResults));

  @override
  AllMoviesDTOCopyWith<$R2, AllMoviesDTO, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AllMoviesDTOCopyWithImpl($value, $cast, t);
}
