import 'package:hive/hive.dart';
import 'package:movie_db_app_getx/data/model/base/base_response.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/movie_repository.dart';

class TopRatedMovie {
  TopRatedMovie({
    required this.repository,
  });

  final MovieRepository repository;

  Future<BaseResponseList<List<MovieModel>>?> call({
    int page = 1,
    bool isPreview = true,
  }) async {
    final box = await Hive.openBox<MovieModel>('top_rated_movie');
    try {
      final result = await repository.getTopRatedMovie(page: page);
      final movies = result?.results ?? [];
      final movieMap = {for (var movie in movies) movie.id: movie};
      if (page == 1 && result != null) {
        await box.clear();
      }
      await box.putAll(movieMap);
      return result!;
    } catch (e) {
      if (page == 1 && box.length > 0) {
        final movie = box.values.toList();
        return BaseResponseList(
          page: (box.length / 20).ceil(),
          totalPages: null,
          totalResults: null,
          results: isPreview ? movie.take(20).toList() : movie,
        );
      }
      return Future<BaseResponseList<List<MovieModel>>>.error(e.toString());
    }
  }
}
