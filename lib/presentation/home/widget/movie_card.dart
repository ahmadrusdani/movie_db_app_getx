import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/core/constants.dart';
import 'package:movie_db_app_getx/core/theme/text_styles.dart';
import 'package:movie_db_app_getx/core/theme/theme_colors.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/detail', arguments: movie.id),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: '${Constants.posterUrl}${movie.posterPath}',
                height: 160,
                width: 120,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Colors.grey[300],
                  height: 160,
                  width: 120,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 120,
              child: Text(
                movie.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.bold12
                    .copyWith(color: ThemeColors.textSecondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
