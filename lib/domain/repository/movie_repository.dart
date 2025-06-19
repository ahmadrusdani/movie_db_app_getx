import 'package:movie_db_app_getx/data/model/base/base_response.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';

abstract class MovieRepository {
  Future<BaseResponseList<List<MovieModel>>?> getNowPlayingMovie({int page = 1});
  Future<BaseResponseList<List<MovieModel>>?> getPopularMovie({int page = 1});
  Future<BaseResponseList<List<MovieModel>>?> getTopRatedMovie({int page = 1});
  Future<BaseResponseList<List<MovieModel>>?> getUpcomingMovie({int page = 1});
  Future<MovieDetailModel?> getDetailMovie({required int movieId});
  Future<BaseResponseList<List<MovieModel>>?> getSearchMovie({
    required String query,
    int page = 1,
  });
}
