// movie_mapper.dart
import 'package:movie_db_app_getx/data/model/collection/collection_model.dart';
import 'package:movie_db_app_getx/data/model/company/production_company_model.dart';
import 'package:movie_db_app_getx/data/model/country/production_country_model.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/data/model/genre/genre_model.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/data/model/spoken/spoken_language_model.dart';


class MovieMapper {
  // Convert MovieDetailModel to MovieModel
  static MovieModel toMovieModel(MovieDetailModel detail) {
    return MovieModel(
      id: detail.id,
      title: detail.title,
      originalTitle: detail.originalTitle,
      posterPath: detail.posterPath,
      backdropPath: detail.backdropPath,
      overview: detail.overview,
      voteAverage: detail.voteAverage,
      releaseDate: detail.releaseDate,
      genres: detail.genres,
      originalLanguage: detail.originalLanguage,
    );
  }

  // Convert MovieModel to MovieDetailModel (with default values for missing fields)
  static MovieDetailModel toMovieDetailModel(MovieModel movie, {
    List<GenreModel> genres = const [],
    String? status,
    String? tagline,
    int runtime = 0,
    int budget = 0,
    int revenue = 0,
    List<ProductionCompanyModel> productionCompanies = const [],
    List<ProductionCountryModel> productionCountries = const [],
    List<SpokenLanguageModel> spokenLanguages = const [],
    bool adult = false,
    double popularity = 0.0,
    int voteCount = 0,
    bool video = false,
    String? imdbId,
    CollectionModel? belongsToCollection,
    String? homepage,
  }) {
    return MovieDetailModel(
      adult: adult,
      backdropPath: movie.backdropPath,
      belongsToCollection: belongsToCollection,
      budget: budget,
      genres: genres,
      homepage: homepage,
      id: movie.id,
      imdbId: imdbId,
      originCountry: const [],
      originalLanguage: 'en',
      originalTitle: movie.originalTitle,
      overview: movie.overview,
      popularity: popularity,
      posterPath: movie.posterPath,
      productionCompanies: productionCompanies,
      productionCountries: productionCountries,
      releaseDate: movie.releaseDate,
      revenue: revenue,
      runtime: runtime,
      spokenLanguages: spokenLanguages,
      status: status ?? 'Released',
      tagline: tagline,
      title: movie.title,
      video: video,
      voteAverage: movie.voteAverage ?? 0.0,
      voteCount: voteCount,
    );
  }
}