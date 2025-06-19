import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/enum/movie_type.dart';
import 'package:movie_db_app_getx/domain/usecase/favorite_change.dart';
import 'package:movie_db_app_getx/domain/usecase/now_playing_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/popular_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/top_rated_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/upcoming_movie.dart';

class HomeController extends GetxController {
  final PopularMovie popularMovieUseCase;
  final NowPlayingMovie nowPlayingMovieUseCase;
  final TopRatedMovie topRatedMovieUseCase;
  final UpcomingMovie upcomingMovieUseCase;
  final FavoriteChange favoriteChangeUseCase;

  HomeController({
    required this.popularMovieUseCase,
    required this.nowPlayingMovieUseCase,
    required this.topRatedMovieUseCase,
    required this.upcomingMovieUseCase,
    required this.favoriteChangeUseCase,
  });

  var popularMovies = <MovieModel>[].obs;
  var nowPlayingMovies = <MovieModel>[].obs;
  var topRatedMovies = <MovieModel>[].obs;
  var upcomingMovies = <MovieModel>[].obs;

  var isLoadingPopular = false.obs;
  var isLoadingNowPlaying = false.obs;
  var isLoadingTopRated = false.obs;
  var isLoadingUpcoming = false.obs;

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
      isLoadingPopular.value = true;
      final result = await popularMovieUseCase.call(page: 1);
      popularMovies.assignAll(result?.results ?? []);
      isLoadingPopular.value = false;
    } catch (e) {
      debugPrint(e.toString());
      isLoadingPopular.value = false;
    }
  }

  Future<void> fetchNowPlayingMovies() async {
    isLoadingNowPlaying.value = true;
    final result = await nowPlayingMovieUseCase.call(page: 1);
    nowPlayingMovies.assignAll(result?.results ?? []);
    isLoadingNowPlaying.value = false;
  }

  Future<void> fetchTopRatedMovies() async {
    isLoadingTopRated.value = true;
    final result = await topRatedMovieUseCase.call(page: 1);
    topRatedMovies.assignAll(result?.results ?? []);
    isLoadingTopRated.value = false;
  }

  Future<void> fetchUpcomingMovies() async {
    isLoadingUpcoming.value = true;
    final result = await upcomingMovieUseCase.call(page: 1);
    upcomingMovies.assignAll(result?.results ?? []);
    isLoadingUpcoming.value = false;
  }

  void setFavorite(MovieModel movie) =>
      favoriteChangeUseCase.setFavorite(movie: movie);

  void removeFavorite(int movieId) =>
      favoriteChangeUseCase.removeFavorite(movieId: movieId);

  void goToNowPlaying() {
    Get.toNamed('/list', arguments: MovieType.nowPlaying.toName);
  }

  void goToPopular() {
    Get.toNamed('/list', arguments: MovieType.popular.toName);
  }

  void goToTopRated() {
    Get.toNamed('/list', arguments: MovieType.topRated.toName);
  }

  void goToUpcoming() {
    Get.toNamed('/list', arguments: MovieType.upcoming.toName);
  }
}
