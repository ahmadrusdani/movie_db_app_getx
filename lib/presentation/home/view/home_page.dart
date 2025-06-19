import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              onSearchTap: () => Get.toNamed('/search'),
            )),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            controller.handleScroll();
          }
          return false;
        },
        child: SingleChildScrollView(
          controller: controller.scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: kToolbarHeight + 32),
              MovieCategory(
                title: "Now Playing",
                movies: controller.nowPlayingMovies,
                isLoading: controller.isLoadingNowPlaying,
                onSeeMore: controller.goToNowPlaying,
              ),
              MovieCategory(
                title: "Popular",
                movies: controller.popularMovies,
                isLoading: controller.isLoadingPopular,
                onSeeMore: controller.goToPopular,
              ),
              MovieCategory(
                title: "Top Rated",
                movies: controller.topRatedMovies,
                isLoading: controller.isLoadingTopRated,
                onSeeMore: controller.goToTopRated,
              ),
              MovieCategory(
                title: "Upcoming",
                movies: controller.upcomingMovies,
                isLoading: controller.isLoadingUpcoming,
                onSeeMore: controller.goToUpcoming,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
