// lib/presentation/widgets/movie_category.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/core/theme/text_styles.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/presentation/home/widget/movie_card.dart';
import 'package:movie_db_app_getx/presentation/home/widget/movie_shimmer_card.dart';

class MovieCategory extends StatelessWidget {
  final String title;
  final RxList<MovieModel> movies;
  final RxBool isLoading;
  final RxBool isError;
  final VoidCallback? onSeeMore;
  final VoidCallback? onRetry;

  const MovieCategory({
    super.key,
    required this.title,
    required this.movies,
    required this.isLoading,
    required this.isError,
    this.onSeeMore,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: TextStyles.bold18),
                  TextButton(
                    onPressed: onSeeMore,
                    child: const Text("See More", style: TextStyles.bold14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: isError.value
                  ? _buildError(onRetry: onRetry)
                  : isLoading.value
                      ? _buildShimmerLoader()
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: movies.length,
                          itemBuilder: (context, index) {
                            final movie = movies[index];
                            return MovieCard(movie: movie);
                          },
                        ),
            ),
          ],
        ));
  }

  Widget _buildShimmerLoader() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const MovieShimmerCard();
      },
    );
  }

  Widget _buildError({VoidCallback? onRetry}) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Failed to load movie data',
          style: TextStyles.bold14,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: onRetry,
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
