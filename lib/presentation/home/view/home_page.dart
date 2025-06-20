import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/core/app/app_routes.dart';
import 'package:movie_db_app_getx/core/theme/theme_colors.dart';
import 'package:movie_db_app_getx/presentation/home/controller/home_controller.dart';
import 'package:movie_db_app_getx/presentation/home/widget/home_appbar.dart';
import 'package:movie_db_app_getx/presentation/home/widget/movie_category.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Obx(() => HomeAppbar(
              opacity: controller.appBarOpacity.value,
              onSearchTap: () => Get.toNamed(AppRoutes.search),
            )),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            controller.handleScroll();
          }
          return false;
        },
        child: RefreshIndicator(
          onRefresh: controller.fetchAllMovies,
          edgeOffset: kToolbarHeight + 16, // supaya tidak tertutup AppBar
          child: SingleChildScrollView(
            physics:
                const AlwaysScrollableScrollPhysics(), // penting agar bisa refresh saat data kosong
            controller: controller.scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kToolbarHeight + 32),
                MovieCategory(
                  title: "Now Playing",
                  movies: controller.nowPlayingMovies,
                  isLoading: controller.isLoadingNowPlaying,
                  isError: controller.isErrorNowPlaying,
                  onSeeMore: controller.goToNowPlaying,
                  onRetry: controller.fetchNowPlayingMovies,
                ),
                MovieCategory(
                  title: "Popular",
                  movies: controller.popularMovies,
                  isLoading: controller.isLoadingPopular,
                  isError: controller.isErrorPopular,
                  onSeeMore: controller.goToPopular,
                  onRetry: controller.fetchPopularMovies,
                ),
                MovieCategory(
                  title: "Top Rated",
                  movies: controller.topRatedMovies,
                  isLoading: controller.isLoadingTopRated,
                  isError: controller.isErrorTopRated,
                  onSeeMore: controller.goToTopRated,
                  onRetry: controller.fetchTopRatedMovies,
                ),
                MovieCategory(
                  title: "Upcoming",
                  movies: controller.upcomingMovies,
                  isLoading: controller.isLoadingUpcoming,
                  isError: controller.isErrorUpcoming,
                  onSeeMore: controller.goToUpcoming,
                  onRetry: controller.fetchUpcomingMovies,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
