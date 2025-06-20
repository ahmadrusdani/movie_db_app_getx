import 'package:get/get.dart';
import 'package:movie_db_app_getx/data/mapper/movie_mapper.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/domain/usecase/detail_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/favorite_change.dart';

class MovieDetailController extends GetxController {
  MovieDetailController({
    required this.movieId,
    required this.detailMovieUseCase,
    required this.favoriteChangeUseCase,
  });

  final DetailMovie detailMovieUseCase;
  final FavoriteChange favoriteChangeUseCase;
  final int movieId;

  final Rx<MovieDetailModel?> movie = Rx<MovieDetailModel?>(null);
  final RxBool isLoading = true.obs;
  final RxBool isError = false.obs;
  final RxBool isFavorite = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadMovieDetails(); // Expecting movie ID
  }

  Future<void> loadMovieDetails() async {
    try {
      isLoading.value = true;
      isError.value = false;

      // Fetch movie details
      final movieDetail = await detailMovieUseCase.call(movieId: movieId);
      movie.value = movieDetail;

      // Check favorite status
      isFavorite.value =
          await favoriteChangeUseCase.isFavorite(movieId: movieId);
    } catch (e) {
      isError.value = true;
      Get.snackbar('Error', 'Failed to load movie details');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> toggleFavorite() async {
    if (movie.value == null) return;

    try {
      isFavorite.value = !isFavorite.value;
      if (isFavorite.value) {
        await favoriteChangeUseCase.setFavorite(
          movie: MovieMapper.toMovieModel(movie.value!),
        );
      } else {
        await favoriteChangeUseCase.removeFavorite(movieId: movie.value!.id);
      }
    } catch (e) {
      isFavorite.value = !isFavorite.value;
      Get.snackbar('Error', 'Failed to update favorites');
    }
  }
}
