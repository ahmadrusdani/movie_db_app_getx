import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/presentation/detail/controller/movie_detail_controller.dart';

class ErrorState extends StatelessWidget {
  const ErrorState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          const Text(
            'Failed to load movie details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () =>
                Get.find<MovieDetailController>().loadMovieDetails(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
