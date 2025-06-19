import 'package:get/get.dart';
import 'package:movie_db_app_getx/data/repository/favorite_repository_impl.dart';
import 'package:movie_db_app_getx/data/repository/movie_repository_impl.dart';
import 'package:movie_db_app_getx/data/source/api/api_provider.dart';
import 'package:movie_db_app_getx/domain/repository/favorite_repository.dart';
import 'package:movie_db_app_getx/domain/repository/movie_repository.dart';
import 'package:movie_db_app_getx/domain/usecase/detail_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/favorite_change.dart';
import 'package:movie_db_app_getx/domain/usecase/favorite_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/now_playing_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/popular_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/top_rated_movie.dart';
import 'package:movie_db_app_getx/domain/usecase/upcoming_movie.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    //provider/service
    Get.lazyPut<ApiProvider>(() => ApiProvider(), fenix: true);

    //repository
    Get.lazyPut<MovieRepository>(
      () => MovieRepositoryImpl(apiProvider: Get.find()),
      fenix: true,
    );
    Get.lazyPut<FavoriteRepository>(
      () => FavoriteRepositoryImpl(),
      fenix: true,
    );

    //usecase
    Get.lazyPut<NowPlayingMovie>(
      () => NowPlayingMovie(repository: Get.find()),
      fenix: true,
    );
    Get.lazyPut<PopularMovie>(
      () => PopularMovie(repository: Get.find()),
      fenix: true,
    );
    Get.lazyPut<TopRatedMovie>(
      () => TopRatedMovie(repository: Get.find()),
      fenix: true,
    );
    Get.lazyPut<UpcomingMovie>(
      () => UpcomingMovie(repository: Get.find()),
      fenix: true,
    );
    Get.lazyPut<FavoriteMovie>(
      () => FavoriteMovie(repository: Get.find()),
      fenix: true,
    );
    Get.lazyPut<FavoriteChange>(
      () => FavoriteChange(repository: Get.find()),
      fenix: true,
    );
    Get.lazyPut<DetailMovie>(
      () => DetailMovie(repository: Get.find()),
      fenix: true,
    );
  }
}
