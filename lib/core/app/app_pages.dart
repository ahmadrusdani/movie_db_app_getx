import 'package:get/get.dart';
import 'package:movie_db_app_getx/core/app/app_routes.dart';
import 'package:movie_db_app_getx/presentation/dashboard/controller/dashboard_controller.dart';
import 'package:movie_db_app_getx/presentation/dashboard/view/dashboard_page.dart';
import 'package:movie_db_app_getx/presentation/detail/controller/movie_detail_controller.dart';
import 'package:movie_db_app_getx/presentation/detail/view/movie_detail_page.dart';
import 'package:movie_db_app_getx/presentation/favorite/controller/favorite_controller.dart';
import 'package:movie_db_app_getx/presentation/home/controller/home_controller.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const DashboardPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<DashboardController>(() => DashboardController());
        Get.lazyPut<HomeController>(() => HomeController(
              nowPlayingMovieUseCase: Get.find(),
              popularMovieUseCase: Get.find(),
              topRatedMovieUseCase: Get.find(),
              upcomingMovieUseCase: Get.find(),
              favoriteChangeUseCase: Get.find(),
            ));
        Get.lazyPut<FavoriteController>(() => FavoriteController(
              favoriteUseCase: Get.find(),
            ));
      }),
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () => const MovieDetailPage(),
      binding: BindingsBuilder(() {
        final arguments = Get.arguments;
        final movieId = arguments is int ? arguments : 0;

        Get.lazyPut<MovieDetailController>(() => MovieDetailController(
              movieId: movieId,
              detailMovieUseCase: Get.find(),
              favoriteChangeUseCase: Get.find(),
            ));
      }),
    ),
  ];
}
