import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:movie_db_app_getx/core/constants.dart';
import 'package:movie_db_app_getx/data/model/base/base_response.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';

abstract class IApiProvider {
  Future<Response<BaseResponseList<List<MovieModel>>>> getNowPlayingMovie(
      {int page = 1});

  Future<Response<BaseResponseList<List<MovieModel>>>> getPopularMovie(
      {int page = 1});

  Future<Response<BaseResponseList<List<MovieModel>>>> getTopRatedMovie(
      {int page = 1});

  Future<Response<BaseResponseList<List<MovieModel>>>> getUpcomingMovie(
      {int page = 1});

  Future<Response<MovieDetailModel>> getDetailMovie({required int movieId});

  Future<Response<BaseResponseList<List<MovieModel>>>> getSearchMovie({
    required String query,
    int page = 1,
  });
}

class ApiProvider extends GetConnect implements IApiProvider {
  @override
  void onInit() {
    httpClient.baseUrl = Constants.movieDbBaseUrl;
    httpClient.addRequestModifier((Request<dynamic> request) {
      request.headers['Authorization'] = 'Bearer ${dotenv.get('API_KEY')}';
      return request;
    });

    httpClient.addRequestModifier<dynamic>((request) {
      debugPrint('➡️ [Request]');
      debugPrint('${request.method} ${request.url}');
      debugPrint('Headers: ${request.headers}');
      return request;
    });

    httpClient.addResponseModifier((request, response) {
      debugPrint('⬅️ [Response]');
      debugPrint('${request.method} ${request.url}');
      debugPrint('Status: ${response.statusCode}');
      debugPrint('Body: ${response.body}');
      return response;
    });
  }

  @override
  Future<Response<BaseResponseList<List<MovieModel>>>> getNowPlayingMovie({
    int page = 1,
  }) {
    return get(
      Constants.nowPlayingMovies,
      query: {
        'page': page.toString(),
      },
      decoder: (data) => BaseResponseList.fromJson(
        data,
        (json) => (json as List)
            .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }

  @override
  Future<Response<BaseResponseList<List<MovieModel>>>> getPopularMovie({
    int page = 1,
  }) async {
    return await get(
      Constants.popularMovies,
      query: {
        'page': page.toString(),
      },
      decoder: (data) => BaseResponseList.fromJson(
        data,
        (json) => (json as List)
            .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }

  @override
  Future<Response<BaseResponseList<List<MovieModel>>>> getTopRatedMovie({
    int page = 1,
  }) {
    return get(
      Constants.topRatedMovies,
      query: {
        'page': page.toString(),
      },
      decoder: (data) => BaseResponseList.fromJson(
        data,
        (json) => (json as List)
            .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }

  @override
  Future<Response<BaseResponseList<List<MovieModel>>>> getUpcomingMovie({
    int page = 1,
  }) {
    return get(
      Constants.upcomingMovies,
      query: {
        'page': page.toString(),
      },
      decoder: (data) => BaseResponseList.fromJson(
        data,
        (json) => (json as List)
            .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
  }

  @override
  Future<Response<MovieDetailModel>> getDetailMovie({required int movieId}) {
    return get(
      Constants.detailMovie + movieId.toString(),
      decoder: (data) => MovieDetailModel.fromJson(data),
    );
  }

  @override
  Future<Response<BaseResponseList<List<MovieModel>>>> getSearchMovie(
      {required String query, int page = 1}) {
    return get(
      Constants.searchMovie,
      query: {
        'page': page.toString(),
        'query': query,
      },
      decoder: (data) {
        return BaseResponseList.fromJson(
          data,
          (json) {
            final list = (json as List);
            if (list.isEmpty) return [];
            return list
                .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
                .toList();
          },
        );
      },
    );
  }
}
