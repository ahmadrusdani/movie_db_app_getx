import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/favorite_repository.dart';

class FavoriteRepositoryImpl extends FavoriteRepository {
  @override
  Future<List<MovieModel>?> getFavoriteMovie() async {
    try {
      final box = await Hive.openBox<MovieModel>('favorite_movie');
      return box.values.toList();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> setFavorite({
    required MovieModel movie,
  }) async {
    try {
      final box = await Hive.openBox<MovieModel>('favorite_movie');
      await box.put(movie.id, movie);
    } catch (e) {
      debugPrint('Error isFavorite');
    }
  }

  @override
  Future<void> removeFavorite({required int movieId}) async {
    try {
      final box = await Hive.openBox<MovieModel>('favorite_movie');
      await box.delete(movieId);
    } catch (e) {
      debugPrint('Error isFavorite');
    }
  }

  @override
  Future<Box<MovieModel>?> openBoxFavoriteMovie() async {
    return await Hive.openBox<MovieModel>('favorite_movie');
  }

  @override
  Future<bool> isFavorite({required int movieId}) async {
    try {
      final box = await Hive.openBox<MovieModel>('favorite_movie');
      return box.get(movieId) != null;
    } catch (e) {
      return false;
    }
  }
}
