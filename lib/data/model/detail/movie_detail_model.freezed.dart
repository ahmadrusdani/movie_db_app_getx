// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailModel _$MovieDetailModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailModel {
  @HiveField(0)
  bool get adult => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'belongs_to_collection')
  CollectionModel? get belongsToCollection =>
      throw _privateConstructorUsedError;
  @HiveField(3)
  int get budget => throw _privateConstructorUsedError;
  @HiveField(4)
  List<GenreModel> get genres => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get homepage => throw _privateConstructorUsedError;
  @HiveField(6)
  int get id => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'origin_country')
  List<String> get originCountry => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get overview => throw _privateConstructorUsedError;
  @HiveField(12)
  double get popularity => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: 'production_companies')
  List<ProductionCompanyModel> get productionCompanies =>
      throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: 'production_countries')
  List<ProductionCountryModel> get productionCountries =>
      throw _privateConstructorUsedError;
  @HiveField(16)
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  @HiveField(17)
  int get revenue => throw _privateConstructorUsedError;
  @HiveField(18)
  int? get runtime => throw _privateConstructorUsedError;
  @HiveField(19)
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguageModel> get spokenLanguages =>
      throw _privateConstructorUsedError;
  @HiveField(20)
  String get status => throw _privateConstructorUsedError;
  @HiveField(21)
  String? get tagline => throw _privateConstructorUsedError;
  @HiveField(22)
  String get title => throw _privateConstructorUsedError;
  @HiveField(23)
  bool get video => throw _privateConstructorUsedError;
  @HiveField(24)
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @HiveField(25)
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  /// Serializes this MovieDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailModelCopyWith<MovieDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailModelCopyWith<$Res> {
  factory $MovieDetailModelCopyWith(
          MovieDetailModel value, $Res Function(MovieDetailModel) then) =
      _$MovieDetailModelCopyWithImpl<$Res, MovieDetailModel>;
  @useResult
  $Res call(
      {@HiveField(0) bool adult,
      @HiveField(1) @JsonKey(name: 'backdrop_path') String? backdropPath,
      @HiveField(2)
      @JsonKey(name: 'belongs_to_collection')
      CollectionModel? belongsToCollection,
      @HiveField(3) int budget,
      @HiveField(4) List<GenreModel> genres,
      @HiveField(5) String? homepage,
      @HiveField(6) int id,
      @HiveField(7) @JsonKey(name: 'imdb_id') String? imdbId,
      @HiveField(8) @JsonKey(name: 'origin_country') List<String> originCountry,
      @HiveField(9) @JsonKey(name: 'original_language') String originalLanguage,
      @HiveField(10) @JsonKey(name: 'original_title') String originalTitle,
      @HiveField(11) String? overview,
      @HiveField(12) double popularity,
      @HiveField(13) @JsonKey(name: 'poster_path') String? posterPath,
      @HiveField(14)
      @JsonKey(name: 'production_companies')
      List<ProductionCompanyModel> productionCompanies,
      @HiveField(15)
      @JsonKey(name: 'production_countries')
      List<ProductionCountryModel> productionCountries,
      @HiveField(16) @JsonKey(name: 'release_date') DateTime? releaseDate,
      @HiveField(17) int revenue,
      @HiveField(18) int? runtime,
      @HiveField(19)
      @JsonKey(name: 'spoken_languages')
      List<SpokenLanguageModel> spokenLanguages,
      @HiveField(20) String status,
      @HiveField(21) String? tagline,
      @HiveField(22) String title,
      @HiveField(23) bool video,
      @HiveField(24) @JsonKey(name: 'vote_average') double voteAverage,
      @HiveField(25) @JsonKey(name: 'vote_count') int voteCount});

  $CollectionModelCopyWith<$Res>? get belongsToCollection;
}

/// @nodoc
class _$MovieDetailModelCopyWithImpl<$Res, $Val extends MovieDetailModel>
    implements $MovieDetailModelCopyWith<$Res> {
  _$MovieDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = null,
    Object? genres = null,
    Object? homepage = freezed,
    Object? id = null,
    Object? imdbId = freezed,
    Object? originCountry = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = freezed,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? productionCompanies = null,
    Object? productionCountries = null,
    Object? releaseDate = freezed,
    Object? revenue = null,
    Object? runtime = freezed,
    Object? spokenLanguages = null,
    Object? status = null,
    Object? tagline = freezed,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as CollectionModel?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: null == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompanyModel>,
      productionCountries: null == productionCountries
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountryModel>,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      spokenLanguages: null == spokenLanguages
          ? _value.spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<SpokenLanguageModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MovieDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectionModelCopyWith<$Res>? get belongsToCollection {
    if (_value.belongsToCollection == null) {
      return null;
    }

    return $CollectionModelCopyWith<$Res>(_value.belongsToCollection!, (value) {
      return _then(_value.copyWith(belongsToCollection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailModelImplCopyWith<$Res>
    implements $MovieDetailModelCopyWith<$Res> {
  factory _$$MovieDetailModelImplCopyWith(_$MovieDetailModelImpl value,
          $Res Function(_$MovieDetailModelImpl) then) =
      __$$MovieDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool adult,
      @HiveField(1) @JsonKey(name: 'backdrop_path') String? backdropPath,
      @HiveField(2)
      @JsonKey(name: 'belongs_to_collection')
      CollectionModel? belongsToCollection,
      @HiveField(3) int budget,
      @HiveField(4) List<GenreModel> genres,
      @HiveField(5) String? homepage,
      @HiveField(6) int id,
      @HiveField(7) @JsonKey(name: 'imdb_id') String? imdbId,
      @HiveField(8) @JsonKey(name: 'origin_country') List<String> originCountry,
      @HiveField(9) @JsonKey(name: 'original_language') String originalLanguage,
      @HiveField(10) @JsonKey(name: 'original_title') String originalTitle,
      @HiveField(11) String? overview,
      @HiveField(12) double popularity,
      @HiveField(13) @JsonKey(name: 'poster_path') String? posterPath,
      @HiveField(14)
      @JsonKey(name: 'production_companies')
      List<ProductionCompanyModel> productionCompanies,
      @HiveField(15)
      @JsonKey(name: 'production_countries')
      List<ProductionCountryModel> productionCountries,
      @HiveField(16) @JsonKey(name: 'release_date') DateTime? releaseDate,
      @HiveField(17) int revenue,
      @HiveField(18) int? runtime,
      @HiveField(19)
      @JsonKey(name: 'spoken_languages')
      List<SpokenLanguageModel> spokenLanguages,
      @HiveField(20) String status,
      @HiveField(21) String? tagline,
      @HiveField(22) String title,
      @HiveField(23) bool video,
      @HiveField(24) @JsonKey(name: 'vote_average') double voteAverage,
      @HiveField(25) @JsonKey(name: 'vote_count') int voteCount});

  @override
  $CollectionModelCopyWith<$Res>? get belongsToCollection;
}

/// @nodoc
class __$$MovieDetailModelImplCopyWithImpl<$Res>
    extends _$MovieDetailModelCopyWithImpl<$Res, _$MovieDetailModelImpl>
    implements _$$MovieDetailModelImplCopyWith<$Res> {
  __$$MovieDetailModelImplCopyWithImpl(_$MovieDetailModelImpl _value,
      $Res Function(_$MovieDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = null,
    Object? genres = null,
    Object? homepage = freezed,
    Object? id = null,
    Object? imdbId = freezed,
    Object? originCountry = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = freezed,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? productionCompanies = null,
    Object? productionCountries = null,
    Object? releaseDate = freezed,
    Object? revenue = null,
    Object? runtime = freezed,
    Object? spokenLanguages = null,
    Object? status = null,
    Object? tagline = freezed,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$MovieDetailModelImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as CollectionModel?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: null == originCountry
          ? _value._originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: null == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompanyModel>,
      productionCountries: null == productionCountries
          ? _value._productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountryModel>,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      spokenLanguages: null == spokenLanguages
          ? _value._spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<SpokenLanguageModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailModelImpl implements _MovieDetailModel {
  const _$MovieDetailModelImpl(
      {@HiveField(0) required this.adult,
      @HiveField(1) @JsonKey(name: 'backdrop_path') this.backdropPath,
      @HiveField(2)
      @JsonKey(name: 'belongs_to_collection')
      this.belongsToCollection,
      @HiveField(3) required this.budget,
      @HiveField(4) required final List<GenreModel> genres,
      @HiveField(5) this.homepage,
      @HiveField(6) required this.id,
      @HiveField(7) @JsonKey(name: 'imdb_id') this.imdbId,
      @HiveField(8)
      @JsonKey(name: 'origin_country')
      required final List<String> originCountry,
      @HiveField(9)
      @JsonKey(name: 'original_language')
      required this.originalLanguage,
      @HiveField(10)
      @JsonKey(name: 'original_title')
      required this.originalTitle,
      @HiveField(11) this.overview,
      @HiveField(12) required this.popularity,
      @HiveField(13) @JsonKey(name: 'poster_path') this.posterPath,
      @HiveField(14)
      @JsonKey(name: 'production_companies')
      required final List<ProductionCompanyModel> productionCompanies,
      @HiveField(15)
      @JsonKey(name: 'production_countries')
      required final List<ProductionCountryModel> productionCountries,
      @HiveField(16) @JsonKey(name: 'release_date') this.releaseDate,
      @HiveField(17) required this.revenue,
      @HiveField(18) this.runtime,
      @HiveField(19)
      @JsonKey(name: 'spoken_languages')
      required final List<SpokenLanguageModel> spokenLanguages,
      @HiveField(20) required this.status,
      @HiveField(21) this.tagline,
      @HiveField(22) required this.title,
      @HiveField(23) required this.video,
      @HiveField(24) @JsonKey(name: 'vote_average') required this.voteAverage,
      @HiveField(25) @JsonKey(name: 'vote_count') required this.voteCount})
      : _genres = genres,
        _originCountry = originCountry,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _spokenLanguages = spokenLanguages;

  factory _$MovieDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailModelImplFromJson(json);

  @override
  @HiveField(0)
  final bool adult;
  @override
  @HiveField(1)
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @HiveField(2)
  @JsonKey(name: 'belongs_to_collection')
  final CollectionModel? belongsToCollection;
  @override
  @HiveField(3)
  final int budget;
  final List<GenreModel> _genres;
  @override
  @HiveField(4)
  List<GenreModel> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  @HiveField(5)
  final String? homepage;
  @override
  @HiveField(6)
  final int id;
  @override
  @HiveField(7)
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  final List<String> _originCountry;
  @override
  @HiveField(8)
  @JsonKey(name: 'origin_country')
  List<String> get originCountry {
    if (_originCountry is EqualUnmodifiableListView) return _originCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originCountry);
  }

  @override
  @HiveField(9)
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @HiveField(10)
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @HiveField(11)
  final String? overview;
  @override
  @HiveField(12)
  final double popularity;
  @override
  @HiveField(13)
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  final List<ProductionCompanyModel> _productionCompanies;
  @override
  @HiveField(14)
  @JsonKey(name: 'production_companies')
  List<ProductionCompanyModel> get productionCompanies {
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCompanies);
  }

  final List<ProductionCountryModel> _productionCountries;
  @override
  @HiveField(15)
  @JsonKey(name: 'production_countries')
  List<ProductionCountryModel> get productionCountries {
    if (_productionCountries is EqualUnmodifiableListView)
      return _productionCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCountries);
  }

  @override
  @HiveField(16)
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  @override
  @HiveField(17)
  final int revenue;
  @override
  @HiveField(18)
  final int? runtime;
  final List<SpokenLanguageModel> _spokenLanguages;
  @override
  @HiveField(19)
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguageModel> get spokenLanguages {
    if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spokenLanguages);
  }

  @override
  @HiveField(20)
  final String status;
  @override
  @HiveField(21)
  final String? tagline;
  @override
  @HiveField(22)
  final String title;
  @override
  @HiveField(23)
  final bool video;
  @override
  @HiveField(24)
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @HiveField(25)
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'MovieDetailModel(adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailModelImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.belongsToCollection, belongsToCollection) ||
                other.belongsToCollection == belongsToCollection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            const DeepCollectionEquality()
                .equals(other._originCountry, _originCountry) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies) &&
            const DeepCollectionEquality()
                .equals(other._productionCountries, _productionCountries) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            const DeepCollectionEquality()
                .equals(other._spokenLanguages, _spokenLanguages) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        belongsToCollection,
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        imdbId,
        const DeepCollectionEquality().hash(_originCountry),
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        const DeepCollectionEquality().hash(_productionCompanies),
        const DeepCollectionEquality().hash(_productionCountries),
        releaseDate,
        revenue,
        runtime,
        const DeepCollectionEquality().hash(_spokenLanguages),
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount
      ]);

  /// Create a copy of MovieDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailModelImplCopyWith<_$MovieDetailModelImpl> get copyWith =>
      __$$MovieDetailModelImplCopyWithImpl<_$MovieDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailModel implements MovieDetailModel {
  const factory _MovieDetailModel(
      {@HiveField(0) required final bool adult,
      @HiveField(1) @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @HiveField(2)
      @JsonKey(name: 'belongs_to_collection')
      final CollectionModel? belongsToCollection,
      @HiveField(3) required final int budget,
      @HiveField(4) required final List<GenreModel> genres,
      @HiveField(5) final String? homepage,
      @HiveField(6) required final int id,
      @HiveField(7) @JsonKey(name: 'imdb_id') final String? imdbId,
      @HiveField(8)
      @JsonKey(name: 'origin_country')
      required final List<String> originCountry,
      @HiveField(9)
      @JsonKey(name: 'original_language')
      required final String originalLanguage,
      @HiveField(10)
      @JsonKey(name: 'original_title')
      required final String originalTitle,
      @HiveField(11) final String? overview,
      @HiveField(12) required final double popularity,
      @HiveField(13) @JsonKey(name: 'poster_path') final String? posterPath,
      @HiveField(14)
      @JsonKey(name: 'production_companies')
      required final List<ProductionCompanyModel> productionCompanies,
      @HiveField(15)
      @JsonKey(name: 'production_countries')
      required final List<ProductionCountryModel> productionCountries,
      @HiveField(16) @JsonKey(name: 'release_date') final DateTime? releaseDate,
      @HiveField(17) required final int revenue,
      @HiveField(18) final int? runtime,
      @HiveField(19)
      @JsonKey(name: 'spoken_languages')
      required final List<SpokenLanguageModel> spokenLanguages,
      @HiveField(20) required final String status,
      @HiveField(21) final String? tagline,
      @HiveField(22) required final String title,
      @HiveField(23) required final bool video,
      @HiveField(24)
      @JsonKey(name: 'vote_average')
      required final double voteAverage,
      @HiveField(25)
      @JsonKey(name: 'vote_count')
      required final int voteCount}) = _$MovieDetailModelImpl;

  factory _MovieDetailModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailModelImpl.fromJson;

  @override
  @HiveField(0)
  bool get adult;
  @override
  @HiveField(1)
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @HiveField(2)
  @JsonKey(name: 'belongs_to_collection')
  CollectionModel? get belongsToCollection;
  @override
  @HiveField(3)
  int get budget;
  @override
  @HiveField(4)
  List<GenreModel> get genres;
  @override
  @HiveField(5)
  String? get homepage;
  @override
  @HiveField(6)
  int get id;
  @override
  @HiveField(7)
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @override
  @HiveField(8)
  @JsonKey(name: 'origin_country')
  List<String> get originCountry;
  @override
  @HiveField(9)
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @HiveField(10)
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @HiveField(11)
  String? get overview;
  @override
  @HiveField(12)
  double get popularity;
  @override
  @HiveField(13)
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @HiveField(14)
  @JsonKey(name: 'production_companies')
  List<ProductionCompanyModel> get productionCompanies;
  @override
  @HiveField(15)
  @JsonKey(name: 'production_countries')
  List<ProductionCountryModel> get productionCountries;
  @override
  @HiveField(16)
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate;
  @override
  @HiveField(17)
  int get revenue;
  @override
  @HiveField(18)
  int? get runtime;
  @override
  @HiveField(19)
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguageModel> get spokenLanguages;
  @override
  @HiveField(20)
  String get status;
  @override
  @HiveField(21)
  String? get tagline;
  @override
  @HiveField(22)
  String get title;
  @override
  @HiveField(23)
  bool get video;
  @override
  @HiveField(24)
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @HiveField(25)
  @JsonKey(name: 'vote_count')
  int get voteCount;

  /// Create a copy of MovieDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailModelImplCopyWith<_$MovieDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
