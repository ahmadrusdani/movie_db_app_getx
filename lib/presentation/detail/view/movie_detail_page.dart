import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/presentation/detail/controller/movie_detail_controller.dart';
import 'package:movie_db_app_getx/presentation/detail/widget/backdrop_image.dart';
import 'package:movie_db_app_getx/presentation/detail/widget/empty_state.dart';
import 'package:movie_db_app_getx/presentation/detail/widget/error_state.dart';
import 'package:movie_db_app_getx/presentation/detail/widget/movie_content.dart';
import 'package:movie_db_app_getx/presentation/detail/widget/shimmer_loading.dart';

class MovieDetailPage extends GetView<MovieDetailController> {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Obx(() {
        if (controller.isError.value) {
          return const ErrorState();
        }
        
        if (controller.isLoading.value) {
          return const ShimmerLoading();
        }
        
        if (controller.movie.value == null) {
          return const EmptyState();
        }
        
        return CustomScrollView(
          slivers: [
            BackdropImage(movie: controller.movie.value!),
            MovieContent(movie: controller.movie.value!),
          ],
        );
      }),
    );
  }
}