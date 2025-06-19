// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @HiveField(0)
  double get popularity => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get video => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @HiveField(4)
  int get id => throw _privateConstructorUsedError;
  @HiveField(5)
  bool get adult => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @HiveField(9)
  List<GenreModel> get genres => throw _privateConstructorUsedError;
  @HiveField(10)
  String get title => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get overview => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {@HiveField(0) double popularity,
      @HiveField(1) @JsonKey(name: 'vote_count') int? voteCount,
      @HiveField(2) bool video,
      @HiveField(3) @JsonKey(name: 'poster_path') String? posterPath,
      @HiveField(4) int id,
      @HiveField(5) bool adult,
      @HiveField(6) @JsonKey(name: 'backdrop_path') String? backdropPath,
      @HiveField(7) @JsonKey(name: 'original_language') String originalLanguage,
      @HiveField(8) @JsonKey(name: 'original_title') String originalTitle,
      @HiveField(9) List<GenreModel> genres,
      @HiveField(10) String title,
      @HiveField(11) @JsonKey(name: 'vote_average') double? voteAverage,
      @HiveField(12) String? overview,
      @HiveField(13) @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularity = null,
    Object? voteCount = freezed,
    Object? video = null,
    Object? posterPath = freezed,
    Object? id = null,
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? genres = null,
    Object? title = null,
    Object? voteAverage = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) double popularity,
      @HiveField(1) @JsonKey(name: 'vote_count') int? voteCount,
      @HiveField(2) bool video,
      @HiveField(3) @JsonKey(name: 'poster_path') String? posterPath,
      @HiveField(4) int id,
      @HiveField(5) bool adult,
      @HiveField(6) @JsonKey(name: 'backdrop_path') String? backdropPath,
      @HiveField(7) @JsonKey(name: 'original_language') String originalLanguage,
      @HiveField(8) @JsonKey(name: 'original_title') String originalTitle,
      @HiveField(9) List<GenreModel> genres,
      @HiveField(10) String title,
      @HiveField(11) @JsonKey(name: 'vote_average') double? voteAverage,
      @HiveField(12) String? overview,
      @HiveField(13) @JsonKey(name: 'release_date') String? releaseDate});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularity = null,
    Object? voteCount = freezed,
    Object? video = null,
    Object? posterPath = freezed,
    Object? id = null,
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? genres = null,
    Object? title = null,
    Object? voteAverage = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$MovieModelImpl(
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {@HiveField(0) this.popularity = 0.0,
      @HiveField(1) @JsonKey(name: 'vote_count') this.voteCount,
      @HiveField(2) this.video = false,
      @HiveField(3) @JsonKey(name: 'poster_path') this.posterPath,
      @HiveField(4) required this.id,
      @HiveField(5) this.adult = false,
      @HiveField(6) @JsonKey(name: 'backdrop_path') this.backdropPath,
      @HiveField(7)
      @JsonKey(name: 'original_language')
      required this.originalLanguage,
      @HiveField(8)
      @JsonKey(name: 'original_title')
      required this.originalTitle,
      @HiveField(9) final List<GenreModel> genres = const [],
      @HiveField(10) required this.title,
      @HiveField(11) @JsonKey(name: 'vote_average') this.voteAverage,
      @HiveField(12) this.overview,
      @HiveField(13) @JsonKey(name: 'release_date') this.releaseDate})
      : _genres = genres;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final double popularity;
  @override
  @HiveField(1)
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @override
  @JsonKey()
  @HiveField(2)
  final bool video;
  @override
  @HiveField(3)
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @HiveField(4)
  final int id;
  @override
  @JsonKey()
  @HiveField(5)
  final bool adult;
  @override
  @HiveField(6)
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @HiveField(7)
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @HiveField(8)
  @JsonKey(name: 'original_title')
  final String originalTitle;
  final List<GenreModel> _genres;
  @override
  @JsonKey()
  @HiveField(9)
  List<GenreModel> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  @HiveField(10)
  final String title;
  @override
  @HiveField(11)
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @HiveField(12)
  final String? overview;
  @override
  @HiveField(13)
  @JsonKey(name: 'release_date')
  final String? releaseDate;

  @override
  String toString() {
    return 'MovieModel(popularity: $popularity, voteCount: $voteCount, video: $video, posterPath: $posterPath, id: $id, adult: $adult, backdropPath: $backdropPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genres: $genres, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      popularity,
      voteCount,
      video,
      posterPath,
      id,
      adult,
      backdropPath,
      originalLanguage,
      originalTitle,
      const DeepCollectionEquality().hash(_genres),
      title,
      voteAverage,
      overview,
      releaseDate);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {@HiveField(0) final double popularity,
      @HiveField(1) @JsonKey(name: 'vote_count') final int? voteCount,
      @HiveField(2) final bool video,
      @HiveField(3) @JsonKey(name: 'poster_path') final String? posterPath,
      @HiveField(4) required final int id,
      @HiveField(5) final bool adult,
      @HiveField(6) @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @HiveField(7)
      @JsonKey(name: 'original_language')
      required final String originalLanguage,
      @HiveField(8)
      @JsonKey(name: 'original_title')
      required final String originalTitle,
      @HiveField(9) final List<GenreModel> genres,
      @HiveField(10) required final String title,
      @HiveField(11) @JsonKey(name: 'vote_average') final double? voteAverage,
      @HiveField(12) final String? overview,
      @HiveField(13)
      @JsonKey(name: 'release_date')
      final String? releaseDate}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  @HiveField(0)
  double get popularity;
  @override
  @HiveField(1)
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @HiveField(2)
  bool get video;
  @override
  @HiveField(3)
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @HiveField(4)
  int get id;
  @override
  @HiveField(5)
  bool get adult;
  @override
  @HiveField(6)
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @HiveField(7)
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @HiveField(8)
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @HiveField(9)
  List<GenreModel> get genres;
  @override
  @HiveField(10)
  String get title;
  @override
  @HiveField(11)
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @HiveField(12)
  String? get overview;
  @override
  @HiveField(13)
  @JsonKey(name: 'release_date')
  String? get releaseDate;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
