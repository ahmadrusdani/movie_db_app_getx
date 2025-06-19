// lib/presentation/widgets/shimmer_movie_card.dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieShimmerCard extends StatelessWidget {
  const MovieShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 120,
              height: 16,
              color: Colors.white,
            ),
            const SizedBox(height: 4),
            Container(
              width: 80,
              height: 12,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}