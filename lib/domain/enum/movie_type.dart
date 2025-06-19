// movie_type.dart
enum MovieType {
  upcoming,
  popular,
  nowPlaying,
  topRated,
}

extension MovieTypeExtension on MovieType {
  String get toName {
    switch (this) {
      case MovieType.upcoming:
        return 'Upcoming';
      case MovieType.popular:
        return 'Popular';
      case MovieType.nowPlaying:
        return 'Now Playing';
      case MovieType.topRated:
        return 'Top Rated';
    }
  }
}

extension StringMovieTypeExtension on String {
  MovieType get type {
    switch (this) {
      case 'Upcoming':
        return MovieType.upcoming;
      case 'Popular':
        return MovieType.popular;
      case 'Now Playing':
        return MovieType.nowPlaying;
      case 'Top Rated':
        return MovieType.topRated;
      default:
        return MovieType.topRated;
    }
  }
}
