// lib/presentation/pages/favorite/favorite_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_db_app_getx/core/constants.dart';
import 'package:movie_db_app_getx/core/theme/text_styles.dart';
import 'package:movie_db_app_getx/core/theme/theme_colors.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/presentation/favorite/controller/favorite_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Movies"),
        backgroundColor: ThemeColors.primary,
      ),
      body: FutureBuilder<Box<MovieModel>?>(
          future: controller.open(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text("Error: \${snapshot.error}"));
            }

            final box = snapshot.data!;
            return ValueListenableBuilder(
              valueListenable: box.listenable(),
              builder: (context, value, child) {
                final favorites = value.values.toList();

                if (favorites.isEmpty) {
                  return const Center(child: Text("No favorite movies yet."));
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    final movie = favorites[index];
                    return GestureDetector(
                      onTap: () => Get.toNamed('/detail', arguments: movie.id),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: CachedNetworkImage(
                                imageUrl:
                                    '${Constants.posterUrl}${movie.posterPath}',
                                height: 160,
                                width: 120,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => Container(
                                  color: Colors.grey[300],
                                  height: 160,
                                  width: 120,
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    movie.title,
                                    style:
                                        TextStyles.bold14.copyWith(height: 1.2),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    movie.overview ?? '',
                                    style: TextStyles.regular12
                                        .copyWith(height: 1.4),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          }),
    );
  }
}
