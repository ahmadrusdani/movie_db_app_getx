import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';

abstract class FavoriteRepository {
  Future<List<MovieModel>?> getFavoriteMovie();
  Future<Box<MovieModel>?> openBoxFavoriteMovie();
  Future<void> setFavorite({required MovieModel movie});
  Future<void> removeFavorite({required int movieId});
  Future<bool> isFavorite({required int movieId});
}
