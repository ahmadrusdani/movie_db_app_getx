import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/core/constants.dart';
import 'package:movie_db_app_getx/core/theme/theme_colors.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/presentation/detail/controller/movie_detail_controller.dart';

class BackdropImage extends StatelessWidget {
  final MovieDetailModel movie;

  const BackdropImage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: 'backdrop-${movie.id}',
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                '${Constants.backdropUrl}${movie.backdropPath}',
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  color: Colors.grey[800],
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      ThemeColors.background.withOpacity(0.9),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      pinned: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Get.back(),
      ),
      actions: [
        IconButton(
          icon: Obx(() => Icon(
            Get.find<MovieDetailController>().isFavorite.value 
              ? Icons.favorite 
              : Icons.favorite_border,
            color: Colors.red,
          )),
          onPressed: Get.find<MovieDetailController>().toggleFavorite,
        ),
      ],
    );
  }
}