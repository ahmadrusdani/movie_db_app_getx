import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/favorite_repository.dart';

class FavoriteChange {
  FavoriteChange({
    required this.repository,
  });

  final FavoriteRepository repository;

  Future<void> setFavorite({required MovieModel movie}) async {
    try {
      await repository.setFavorite(movie: movie);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> removeFavorite({required int movieId}) async {
    try {
      await repository.removeFavorite(movieId: movieId);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> isFavorite({required int movieId}) async {
    try {
      return await repository.isFavorite(movieId: movieId);
    } catch (e) {
      return false;
    }
  }
}
