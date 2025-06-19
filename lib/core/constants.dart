import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  //Base URLs
  static const String movieDbBaseUrl = 'https://api.themoviedb.org/3';

  //Movies URLs
  static const String latestMovie = '/movie/latest';
  static const String nowPlayingMovies = '/movie/now_playing';
  static const String popularMovies = '/movie/popular';
  static const String topRatedMovies = '/movie/top_rated';
  static const String upcomingMovies = '/movie/upcoming';
  static const String detailMovie = '/movie/';
  static const String searchMovie = '/search/movie';

  static const String posterUrl = 'https://image.tmdb.org/t/p/w185';
  static const String backdropUrl = 'https://image.tmdb.org/t/p/original';

  //TVs URLs
  static const String latestTv = '/tv/latest';
  static const String airingTodayTv = '/tv/airing_today';
  static const String onTheAirTv = '/tv/on_the_air';
  static const String popularTv = '/tv/popular';
  static const String topRatedTv = '/tv/top_rated';

}
