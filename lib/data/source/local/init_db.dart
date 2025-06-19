import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_db_app_getx/data/model/collection/collection_model.dart';
import 'package:movie_db_app_getx/data/model/company/production_company_model.dart';
import 'package:movie_db_app_getx/data/model/country/production_country_model.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/data/model/genre/genre_model.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/data/model/spoken/spoken_language_model.dart';

class InitDB {
  static Future<void> initialize() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(MovieModelAdapter(), override: true)
      ..registerAdapter(MovieDetailModelAdapter(), override: true)
      ..registerAdapter(CollectionModelAdapter(), override: true)
      ..registerAdapter(ProductionCountryModelAdapter(), override: true)
      ..registerAdapter(ProductionCompanyModelAdapter(), override: true)
      ..registerAdapter(SpokenLanguageModelAdapter(), override: true)
      ..registerAdapter(GenreModelAdapter(), override: true);
  }
}
