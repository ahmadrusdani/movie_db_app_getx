import 'package:flutter/material.dart';
import 'package:movie_db_app_getx/core/constants.dart';
import 'package:movie_db_app_getx/core/formatter.dart';
import 'package:movie_db_app_getx/core/theme/theme_colors.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/presentation/detail/widget/info_section.dart';

class MovieContent extends StatelessWidget {
  final MovieDetailModel movie;

  const MovieContent({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPosterAndInfo(),
            const SizedBox(height: 24),
            if (movie.tagline != null && movie.tagline!.isNotEmpty)
              _buildTagline(),
            _buildOverview(),
            const SizedBox(height: 24),
            _buildAdditionalInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildPosterAndInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: 'poster-${movie.id}',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              '${Constants.posterUrl}${movie.posterPath}',
              width: 120,
              height: 180,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                color: Colors.grey[800],
                child: const Icon(Icons.movie, size: 50),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    movie.voteAverage.toStringAsFixed(1),
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 16),
                  if (movie.runtime != null)
                    Text(
                      '${movie.runtime! ~/ 60}h ${movie.runtime! % 60}m',
                      style: const TextStyle(fontSize: 16),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                movie.releaseDate != null && movie.releaseDate != ''
                    ? Formatter.formatFullDate(DateTime.parse(movie.releaseDate!))
                    : 'Unknown year',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: movie.genres
                    .map((genre) => Chip(
                          label: Text(genre.name),
                          backgroundColor: ThemeColors.primary.withOpacity(0.2),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTagline() {
    return Column(
      children: [
        Text(
          '"${movie.tagline!}"',
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildOverview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Overview',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          movie.overview ?? 'No overview available',
          style: const TextStyle(fontSize: 16, height: 1.5),
        ),
      ],
    );
  }

  Widget _buildAdditionalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InfoSection(title: 'Status', value: movie.status),
        InfoSection(title: 'Original Title', value: movie.originalTitle),
        if (movie.budget > 0)
          InfoSection(
            title: 'Budget',
            value: formatBudget(movie.budget),
          ),
        if (movie.productionCountries.isNotEmpty)
          InfoSection(
            title: 'Country',
            value: movie.productionCountries.map((c) => c.name).join(', '),
          ),
        if (movie.spokenLanguages.isNotEmpty)
          InfoSection(
            title: 'Language',
            value: movie.spokenLanguages.map((l) => l.englishName).join(', '),
          ),
      ],
    );
  }

  String formatBudget(int budget) {
    if (budget <= 0) return 'Not available';

    return '\$${budget.toStringAsFixed(0).replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        )}';
  }
}
