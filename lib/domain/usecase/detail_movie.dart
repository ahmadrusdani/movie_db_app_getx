import 'package:hive/hive.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/domain/repository/movie_repository.dart';

class DetailMovie {
  DetailMovie({
    required this.repository,
  });

  final MovieRepository repository;

  Future<MovieDetailModel?> call({
    required int movieId,
  }) async {
    final box = await Hive.openBox<MovieDetailModel>('movie_detail');
    try {
      final result = await repository.getDetailMovie(movieId: movieId);
      if (result != null) {
        await box.put(movieId, result);
        return result;
      }

      final cachedData = box.get(movieId);
      return cachedData;
    } catch (e) {
      final movie = box.get(movieId);
      if (movie != null) {
        return movie;
      }
      throw Exception(e.toString());
    }
  }
}
