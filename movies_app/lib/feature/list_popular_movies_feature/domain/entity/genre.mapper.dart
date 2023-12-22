// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'genre.dart';

class GenreMapper extends ClassMapperBase<Genre> {
  GenreMapper._();

  static GenreMapper? _instance;
  static GenreMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenreMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Genre';

  static int _$id(Genre v) => v.id;
  static const Field<Genre, int> _f$id = Field('id', _$id);
  static String? _$name(Genre v) => v.name;
  static const Field<Genre, String> _f$name = Field('name', _$name, opt: true);

  @override
  final Map<Symbol, Field<Genre, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
  };

  static Genre _instantiate(DecodingData data) {
    return Genre(id: data.dec(_f$id), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static Genre fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Genre>(map);
  }

  static Genre fromJson(String json) {
    return ensureInitialized().decodeJson<Genre>(json);
  }
}

mixin GenreMappable {
  String toJson() {
    return GenreMapper.ensureInitialized().encodeJson<Genre>(this as Genre);
  }

  Map<String, dynamic> toMap() {
    return GenreMapper.ensureInitialized().encodeMap<Genre>(this as Genre);
  }

  GenreCopyWith<Genre, Genre, Genre> get copyWith =>
      _GenreCopyWithImpl(this as Genre, $identity, $identity);
  @override
  String toString() {
    return GenreMapper.ensureInitialized().stringifyValue(this as Genre);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GenreMapper.ensureInitialized().isValueEqual(this as Genre, other));
  }

  @override
  int get hashCode {
    return GenreMapper.ensureInitialized().hashValue(this as Genre);
  }
}

extension GenreValueCopy<$R, $Out> on ObjectCopyWith<$R, Genre, $Out> {
  GenreCopyWith<$R, Genre, $Out> get $asGenre =>
      $base.as((v, t, t2) => _GenreCopyWithImpl(v, t, t2));
}

abstract class GenreCopyWith<$R, $In extends Genre, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name});
  GenreCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GenreCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Genre, $Out>
    implements GenreCopyWith<$R, Genre, $Out> {
  _GenreCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Genre> $mapper = GenreMapper.ensureInitialized();
  @override
  $R call({int? id, Object? name = $none}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (name != $none) #name: name}));
  @override
  Genre $make(CopyWithData data) => Genre(
      id: data.get(#id, or: $value.id), name: data.get(#name, or: $value.name));

  @override
  GenreCopyWith<$R2, Genre, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GenreCopyWithImpl($value, $cast, t);
}
