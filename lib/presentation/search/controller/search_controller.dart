import 'package:get/get.dart';
import 'package:movie_db_app_getx/data/model/base/base_response.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';

import 'package:movie_db_app_getx/domain/usecase/search_movie.dart';

// class SearchPageController extends GetxController {
//   SearchPageController({
//     required this.searchMovieUseCase,
//   });

//   final SearchMovie searchMovieUseCase;

//   final RxList<MovieModel> searchResults = <MovieModel>[].obs;
//   final RxString searchQuery = ''.obs;
//   final RxBool isLoading = false.obs;
//   final RxBool isError = false.obs;
//   final RxInt currentPage = 1.obs;
//   final RxBool hasReachedMax = false.obs;

//   final Duration debounceTime = const Duration(milliseconds: 500);

//   @override
//   void onInit() {
//     super.onInit();
//     debounce(
//       searchQuery,
//       (_) => searchMovies(),
//       time: debounceTime,
//     );
//   }

//   Future<void> searchMovies({bool loadMore = false}) async {
//     if (searchQuery.value.isEmpty) {
//       searchResults.clear();
//       return;
//     }

//     try {
//       if (!loadMore) {
//         isLoading.value = true;
//         currentPage.value = 1;
//         hasReachedMax.value = false;
//       } else {
//         currentPage.value++;
//       }

//       isError.value = false;

//       final results = await searchMovieUseCase(
//         query: searchQuery.value,
//         page: currentPage.value,
//       );

//       final movies = results?.results ?? [];

//       if (!loadMore) {
//         searchResults.assignAll(movies);
//       } else {
//         searchResults.addAll(movies);
//       }

//       if (movies.isEmpty) {
//         hasReachedMax.value = true;
//       }
//     } catch (e) {
//       isError.value = true;
//       if (loadMore) currentPage.value--;
//       Get.snackbar('Error', 'Failed to search movies');
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   void clearSearch() {
//     searchQuery.value = '';
//     searchResults.clear();
//   }
// }

class SearchPageController extends GetxController {
  SearchPageController({
    required this.searchMovieUseCase,
  });

  final SearchMovie searchMovieUseCase;

  final RxList<MovieModel> searchResults = <MovieModel>[].obs;
  final RxInt page = 1.obs;

  final RxBool isLoading = false.obs;
  final RxBool isLoadingMore = false.obs;
  final RxBool isError = false.obs;
  final RxBool hasReachedMax = false.obs;

  final RxString query = ''.obs;
  final Duration debounceTime = const Duration(milliseconds: 500);

  @override
  void onInit() {
    super.onInit();
    debounce(query, (_) => _onQueryChanged(), time: debounceTime);
  }

  void _onQueryChanged() {
    if (query.value.isEmpty) {
      clearSearch();
    } else {
      loadMovies();
    }
  }

  Future<void> loadMovies() async {
    try {
      isLoading.value = true;
      isError.value = false;
      page.value = 1;
      hasReachedMax.value = false;

      final newMovies = await _fetchMovies(page.value);
      final fetchedMovies = newMovies?.results ?? [];
      searchResults.assignAll(fetchedMovies);
    } catch (e) {
      isError.value = true;
      Get.snackbar('Error', 'Failed to search movies');
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
        searchResults.addAll(fetchedMovies);
      }
    } catch (e) {
      page.value--;
      Get.snackbar('Error', 'Failed to load more search results');
    } finally {
      isLoadingMore.value = false;
    }
  }

  Future<BaseResponseList<List<MovieModel>>?> _fetchMovies(int page) {
    return searchMovieUseCase.call(query: query.value, page: page);
  }

  void clearSearch() {
    query.value = '';
    searchResults.clear();
    hasReachedMax.value = false;
  }

  void retry() {
    loadMovies();
  }
}