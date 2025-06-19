// movie_list_controller.dart
import 'package:get/get.dart';
import 'package:movie_db_app_getx/data/model/base/base_response.dart';

import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/enum/movie_type.dart';
import 'package:movie_db_app_getx/domain/usecase/now_playing_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/popular_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/top_rated_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/upcoming_movie.dart';

class MovieListController extends GetxController {
  MovieListController({
    required this.upcomingMovieUseCase,
    required this.nowPlayingMovieUseCase,
    required this.popularMovieUseCase,
    required this.topRatedMovieUseCase,
    required this.movieType,
  });

  final UpcomingMovie upcomingMovieUseCase;
  final NowPlayingMovie nowPlayingMovieUseCase;
  final PopularMovie popularMovieUseCase;
  final TopRatedMovie topRatedMovieUseCase;

  final MovieType movieType;

  final RxList<MovieModel> movies = <MovieModel>[].obs;
  final RxInt page = 1.obs;
  final RxBool isLoading = false.obs;
  final RxBool isLoadingMore = false.obs;
  final RxBool isError = false.obs;
  final RxBool hasReachedMax = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadMovies();
  }

  Future<void> loadMovies() async {
    try {
      isLoading.value = true;
      isError.value = false;
      page.value = 1;
      hasReachedMax.value = false;

      final newMovies = await _fetchMovies(page.value);
      final fetchedMovies = newMovies?.results ?? [];
      movies.assignAll(fetchedMovies);
    } catch (e) {
      isError.value = true;
      Get.snackbar('Error', 'Failed to load ${movieType.name} movies');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loadMoreMovies() async {
    if (isLoadingMore.value || hasReachedMax.value) return;

    try {
      isLoadingMore.value = true;
      page.value++;

      final newMovies = await _fetchMovies(page.value);
      final fetchedMovies = newMovies?.results ?? [];
      if (fetchedMovies.isEmpty) {
        hasReachedMax.value = true;
      } else {
        movies.addAll(fetchedMovies); // tambahkan ke list observable
      }
    } catch (e) {
      page.value--;
      Get.snackbar('Error', 'Failed to load more ${movieType.name} movies');
    } finally {
      isLoadingMore.value = false;
    }
  }

  Future<BaseResponseList<List<MovieModel>>?> _fetchMovies(int page) async {
    switch (movieType) {
      case MovieType.upcoming:
        return await upcomingMovieUseCase.call(page: page);
      case MovieType.popular:
        return await popularMovieUseCase.call(page: page);
      case MovieType.nowPlaying:
        return await nowPlayingMovieUseCase.call(page: page);
      case MovieType.topRated:
        return await topRatedMovieUseCase.call(page: page);
    }
  }

  void retry() {
    loadMovies();
  }
}
