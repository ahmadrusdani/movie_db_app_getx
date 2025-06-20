import 'package:movie_db_app_getx/data/model/base/base_response.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/movie_repository.dart';

class SearchMovie {
  SearchMovie({
    required this.repository,
  });

  final MovieRepository repository;

  Future<BaseResponseList<List<MovieModel>>?> call({
    required String query,
    int page = 1,
  }) async {
    try {
      final result = await repository.getSearchMovie(
        query: query,
        page: page,
      );
      return result;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
