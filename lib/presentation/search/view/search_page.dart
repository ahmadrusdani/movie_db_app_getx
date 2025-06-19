import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/core/theme/theme_colors.dart';
import 'package:movie_db_app_getx/presentation/list/widget/movie_card.dart';
import 'package:movie_db_app_getx/presentation/list/widget/state_widget.dart';
import 'package:movie_db_app_getx/presentation/search/controller/search_controller.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Movies'),
        backgroundColor: ThemeColors.primary,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: ThemeColors.primary,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Hero(
              tag: 'search-bar',
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Icon(Icons.search, color: Colors.white70),
                      ),
                      Expanded(
                        child: TextField(
                          autofocus: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: "Search movies...",
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                          onChanged: (query) => controller.query.value = query,
                        ),
                      ),
                      Obx(() => controller.query.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear, color: Colors.white70),
                              onPressed: controller.clearSearch,
                            )
                          : const SizedBox(width: 8)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              if (controller.isLoading.value && controller.searchResults.isEmpty) {
                return const Center(child: LoadingWidget());
              }
            
              if (controller.isError.value) {
                return ErrorRetryWidget(
                  message: 'Failed to load search results',
                  onRetry: () => controller.loadMovies(),
                );
              }
            
              if (controller.query.value.isEmpty) {
                return const Center(
                  child: Text('Start typing to search movies'),
                );
              }
            
              if (controller.searchResults.isEmpty) {
                return const EmptyStateWidget(message: 'No movies found');
              }
            
              return NotificationListener<ScrollNotification>(
                onNotification: (scrollInfo) {
                  if (scrollInfo.metrics.pixels ==
                          scrollInfo.metrics.maxScrollExtent &&
                      !controller.isLoading.value &&
                      !controller.hasReachedMax.value) {
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
                    itemCount: controller.searchResults.length,
                    itemBuilder: (context, index) {
                      return MovieCard(movie: controller.searchResults[index]);
                    },
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
