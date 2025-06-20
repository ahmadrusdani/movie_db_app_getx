import 'package:flutter/material.dart';
import 'package:movie_db_app_getx/data/model/base/base_response.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/data/source/api/api_provider.dart';
import 'package:movie_db_app_getx/domain/repository/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  MovieRepositoryImpl({
    required this.apiProvider,
  });

  final ApiProvider apiProvider;

  @override
  Future<BaseResponseList<List<MovieModel>>?> getNowPlayingMovie({
    int page = 1,
  }) async {
    final response = await apiProvider.getTopRatedMovie(page: page);
    if (response.status.hasError) {
      return Future<BaseResponseList<List<MovieModel>>?>.error(
          response.statusText!);
    } else {
      return response.body;
    }
  }

  @override
  Future<BaseResponseList<List<MovieModel>>?> getPopularMovie({
    int page = 1,
  }) async {
    try {
      final response = await apiProvider.getPopularMovie(page: page);
      if (response.status.hasError == true) {
        return Future<BaseResponseList<List<MovieModel>>?>.error(
            response.statusText!);
      } else {
        return response.body;
      }
    } catch (e) {
      debugPrint('getPopularMovieError: ${e.toString()}');
      return null;
    }
  }

  @override
  Future<BaseResponseList<List<MovieModel>>?> getTopRatedMovie({
    int page = 1,
  }) async {
    final response = await apiProvider.getTopRatedMovie(page: page);
    if (response.status.hasError) {
      return Future<BaseResponseList<List<MovieModel>>?>.error(
          response.statusText!);
    } else {
      return response.body;
    }
  }

  @override
  Future<BaseResponseList<List<MovieModel>>?> getUpcomingMovie({
    int page = 1,
  }) async {
    final response = await apiProvider.getUpcomingMovie(page: page);
    if (response.status.hasError) {
      return Future<BaseResponseList<List<MovieModel>>?>.error(
          response.statusText!);
    } else {
      return response.body;
    }
  }

  @override
  Future<MovieDetailModel?> getDetailMovie({required int movieId}) async {
    final response = await apiProvider.getDetailMovie(movieId: movieId);
    if (response.status.hasError) {
      return Future<MovieDetailModel?>.error(response.statusText!);
    } else {
      return response.body;
    }
  }

  @override
  Future<BaseResponseList<List<MovieModel>>?> getSearchMovie({
    required String query,
    int page = 1,
  }) async {
    final response = await apiProvider.getSearchMovie(
      query: query,
      page: page,
    );
    if (response.status.hasError) {
      return Future<BaseResponseList<List<MovieModel>>?>.error(
        response.statusText!,
      );
    } else {
      return response.body;
    }
  }
}
