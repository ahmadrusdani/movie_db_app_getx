import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/core/app/app_routes.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/enum/movie_type.dart';
import 'package:movie_db_app_getx/domain/usecase/now_playing_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/popular_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/top_rated_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/upcoming_movie.dart';

class HomeController extends GetxController {
  final PopularMovie popularMovieUseCase;
  final NowPlayingMovie nowPlayingMovieUseCase;
  final TopRatedMovie topRatedMovieUseCase;
  final UpcomingMovie upcomingMovieUseCase;

  HomeController({
    required this.popularMovieUseCase,
    required this.nowPlayingMovieUseCase,
    required this.topRatedMovieUseCase,
    required this.upcomingMovieUseCase,
  });

  var popularMovies = <MovieModel>[].obs;
  var nowPlayingMovies = <MovieModel>[].obs;
  var topRatedMovies = <MovieModel>[].obs;
  var upcomingMovies = <MovieModel>[].obs;

  var isLoadingPopular = false.obs;
  var isLoadingNowPlaying = false.obs;
  var isLoadingTopRated = false.obs;
  var isLoadingUpcoming = false.obs;

  var isErrorPopular = false.obs;
  var isErrorNowPlaying = false.obs;
  var isErrorTopRated = false.obs;
  var isErrorUpcoming = false.obs;

  final appBarOpacity = 1.0.obs;
  final scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    fetchAllMovies();
    scrollController.addListener(handleScroll);
  }

  @override
  void onClose() {
    scrollController.removeListener(handleScroll);
    scrollController.dispose();
    super.onClose();
  }

  void handleScroll() {
    const double fadeStart = 50;
    const double fadeEnd = 150;
    final offset = scrollController.offset;

    if (offset <= fadeStart) {
      appBarOpacity.value = 1.0;
    } else if (offset >= fadeEnd) {
      appBarOpacity.value = 0.0;
    } else {
      appBarOpacity.value = 1.0 - (offset - fadeStart) / (fadeEnd - fadeStart);
    }
  }

  Future<void> fetchAllMovies() async {
    fetchPopularMovies();
    fetchNowPlayingMovies();
    fetchTopRatedMovies();
    fetchUpcomingMovies();
  }

  Future<void> fetchPopularMovies() async {
    try {
      isErrorPopular.value = false;
      isLoadingPopular.value = true;
      final result = await popularMovieUseCase.call(page: 1);
      popularMovies.assignAll(result?.results ?? []);
    } catch (e) {
      debugPrint(e.toString());
      isErrorPopular.value = true;
    } finally {
      isLoadingPopular.value = false;
    }
  }

  Future<void> fetchNowPlayingMovies() async {
    try {
      isErrorNowPlaying.value = false;
      isLoadingNowPlaying.value = true;
      final result = await nowPlayingMovieUseCase.call(page: 1);
      nowPlayingMovies.assignAll(result?.results ?? []);
    } catch (e) {
      debugPrint(e.toString());
      isErrorNowPlaying.value = true;
    } finally {
      isLoadingNowPlaying.value = false;
    }
  }

  Future<void> fetchTopRatedMovies() async {
    try {
      isErrorTopRated.value = false;
      isLoadingTopRated.value = true;
      final result = await topRatedMovieUseCase.call(page: 1);
      topRatedMovies.assignAll(result?.results ?? []);
    } catch (e) {
      debugPrint(e.toString());
      isErrorTopRated.value = true;
    } finally {
      isLoadingTopRated.value = false;
    }
  }

  Future<void> fetchUpcomingMovies() async {
    try {
      isErrorUpcoming.value = false;
      isLoadingUpcoming.value = true;
      final result = await upcomingMovieUseCase.call(page: 1);
      upcomingMovies.assignAll(result?.results ?? []);
    } catch (e) {
      debugPrint(e.toString());
      isErrorUpcoming.value = true;
    } finally {
      isLoadingUpcoming.value = false;
    }
  }

  void goToNowPlaying() {
    Get.toNamed(AppRoutes.list, arguments: MovieType.nowPlaying.toName);
  }

  void goToPopular() {
    Get.toNamed(AppRoutes.list, arguments: MovieType.popular.toName);
  }

  void goToTopRated() {
    Get.toNamed(AppRoutes.list, arguments: MovieType.topRated.toName);
  }

  void goToUpcoming() {
    Get.toNamed(AppRoutes.list, arguments: MovieType.upcoming.toName);
  }
}
