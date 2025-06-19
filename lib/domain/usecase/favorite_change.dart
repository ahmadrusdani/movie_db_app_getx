import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/favorite_repository.dart';

class FavoriteChange {
  FavoriteChange({
    required this.repository,
  });

  final FavoriteRepository repository;

  void setFavorite({required MovieModel movie}) async {
    await repository.setFavorite(movie: movie);
  }

  void removeFavorite({required int movieId}) async {
    await repository.removeFavorite(movieId: movieId);
  }

  Future<bool> isFavorite({required int movieId}) async {
    try {
      return await repository.isFavorite(movieId: movieId);
    } catch (e) {
      return false;
    }
  }
}
