// movie_list_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/domain/enum/movie_type.dart';
import 'package:movie_db_app_getx/presentation/list/controller/movie_list_controller.dart';
import 'package:movie_db_app_getx/presentation/list/widget/movie_card.dart';
import 'package:movie_db_app_getx/presentation/list/widget/state_widget.dart';

class MovieListPage extends GetView<MovieListController> {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.movieType.toName),
      ),
      body: Obx(() {
        if (controller.isLoading.value && controller.movies.isEmpty) {
          return const Center(child: LoadingWidget());
        }

        if (controller.isError.value && controller.movies.isEmpty) {
          return ErrorRetryWidget(
            message: 'Failed to load ${controller.movieType.name} movies',
            onRetry: controller.retry,
          );
        }

        if (controller.movies.isEmpty) {
          return const EmptyStateWidget(message: 'No movies found');
        }

        return NotificationListener<ScrollNotification>(
          onNotification: (scrollInfo) {
            if (scrollInfo.metrics.pixels ==
                    scrollInfo.metrics.maxScrollExtent &&
                !controller.isLoadingMore.value) {
              controller.loadMoreMovies();
            }
            return false;
          },
          child: RefreshIndicator(
            onRefresh: controller.loadMovies,
            child: GridView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.66,
              ),
              itemCount: controller.movies.length,
              itemBuilder: (context, index) {
                return MovieCard(movie: controller.movies[index]);
              },
            ),
          ),
        );
      }),
    );
  }
}
