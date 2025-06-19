import 'package:hive/hive.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/favorite_repository.dart';

class FavoriteMovie {
  FavoriteMovie({
    required this.repository,
  });

  final FavoriteRepository repository;

  Future<List<MovieModel>?> call() async {
    try {
      final result = await repository.getFavoriteMovie();
      return result ?? [];
    } catch (e) {
      return [];
    }
  }

  Future<Box<MovieModel>?> openBox() async {
    return repository.openBoxFavoriteMovie();
  }
}
