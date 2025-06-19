import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:movie_db_app_getx/data/model/collection/collection_model.dart';
import 'package:movie_db_app_getx/data/model/company/production_company_model.dart';
import 'package:movie_db_app_getx/data/model/country/production_country_model.dart';
import 'package:movie_db_app_getx/data/model/genre/genre_model.dart';
import 'package:movie_db_app_getx/data/model/spoken/spoken_language_model.dart';

part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

@freezed
@HiveType(typeId: 6)
class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    @HiveField(0) required bool adult,
    @HiveField(1) @JsonKey(name: 'backdrop_path') String? backdropPath,
    @HiveField(2) @JsonKey(name: 'belongs_to_collection') CollectionModel? belongsToCollection,
    @HiveField(3) required int budget,
    @HiveField(4) required List<GenreModel> genres,
    @HiveField(5) String? homepage,
    @HiveField(6) required int id,
    @HiveField(7) @JsonKey(name: 'imdb_id') String? imdbId,
    @HiveField(8) @JsonKey(name: 'origin_country') required List<String> originCountry,
    @HiveField(9) @JsonKey(name: 'original_language') required String originalLanguage,
    @HiveField(10) @JsonKey(name: 'original_title') required String originalTitle,
    @HiveField(11) String? overview,
    @HiveField(12) required double popularity,
    @HiveField(13) @JsonKey(name: 'poster_path') String? posterPath,
    @HiveField(14) @JsonKey(name: 'production_companies') required List<ProductionCompanyModel> productionCompanies,
    @HiveField(15) @JsonKey(name: 'production_countries') required List<ProductionCountryModel> productionCountries,
    @HiveField(16) @JsonKey(name: 'release_date') String? releaseDate,
    @HiveField(17) required int revenue,
    @HiveField(18) int? runtime,
    @HiveField(19) @JsonKey(name: 'spoken_languages') required List<SpokenLanguageModel> spokenLanguages,
    @HiveField(20) required String status,
    @HiveField(21) String? tagline,
    @HiveField(22) required String title,
    @HiveField(23) required bool video,
    @HiveField(24) @JsonKey(name: 'vote_average') required double voteAverage,
    @HiveField(25) @JsonKey(name: 'vote_count') required int voteCount,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}