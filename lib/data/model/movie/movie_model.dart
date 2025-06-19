import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_db_app_getx/data/model/genre/genre_model.dart';
import 'package:hive/hive.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
@HiveType(typeId: 0)
class MovieModel with _$MovieModel {
  const factory MovieModel({
    @HiveField(0) @Default(0.0) double popularity,
    @HiveField(1) @JsonKey(name: 'vote_count') int? voteCount,
    @HiveField(2) @Default(false) bool video,
    @HiveField(3) @JsonKey(name: 'poster_path') String? posterPath,
    @HiveField(4) required int id,
    @HiveField(5) @Default(false) bool adult,
    @HiveField(6) @JsonKey(name: 'backdrop_path') String? backdropPath,
    @HiveField(7) @JsonKey(name: 'original_language') required String originalLanguage,
    @HiveField(8) @JsonKey(name: 'original_title') required String originalTitle,
    @HiveField(9) @Default([]) List<GenreModel> genres,
    @HiveField(10) required String title,
    @HiveField(11) @JsonKey(name: 'vote_average') double? voteAverage,
    @HiveField(12) String? overview,
    @HiveField(13) @JsonKey(name: 'release_date') DateTime? releaseDate,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
