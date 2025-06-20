import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_test/hive_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/favorite_repository.dart';
import 'package:movie_db_app_getx/domain/usecase/favorite_change.dart';

@GenerateMocks([FavoriteRepository])
import 'favorite_change_test.mocks.dart';

void main() {
  late MockFavoriteRepository mockRepository;
  late FavoriteChange favoriteChange;
  late MovieModel testMovie;

  setUpAll(() async {
    await setUpTestHive();
    Hive.init('test/hive');
    if (!Hive.isAdapterRegistered(MovieModelAdapter().typeId)) {
      Hive.registerAdapter(MovieModelAdapter());
    }
  });

  setUp(() {
    mockRepository = MockFavoriteRepository();
    favoriteChange = FavoriteChange(repository: mockRepository);
    testMovie = const MovieModel(
      id: 1,
      title: 'Inception',
      originalLanguage: 'en',
      originalTitle: 'Inception',
    );
  });

  group('FavoriteChange UseCase', () {
    test('should call setFavorite with correct movie', () async {
      when(mockRepository.setFavorite(movie: testMovie))
          .thenAnswer((_) async => true);

      await favoriteChange.setFavorite(movie: testMovie);

      verify(mockRepository.setFavorite(movie: testMovie)).called(1);
    });

    test('should throw when setFavorite fails', () async {
      when(mockRepository.setFavorite(movie: testMovie))
          .thenThrow(Exception('Database error'));
      expect(
        () async => await favoriteChange.setFavorite(movie: testMovie),
        throwsA(isA<Exception>()),
      );
      verify(mockRepository.setFavorite(movie: testMovie)).called(1);
    });

    test('should call removeFavorite with correct movieId', () async {
      const testMovieId = 1;
      when(mockRepository.removeFavorite(movieId: testMovieId))
          .thenAnswer((_) async => true);

      await favoriteChange.removeFavorite(movieId: testMovieId);

      verify(mockRepository.removeFavorite(movieId: testMovieId)).called(1);
    });

    test('should handle removeFavorite error gracefully', () async {
      const testMovieId = 1;
      when(mockRepository.removeFavorite(movieId: testMovieId))
          .thenThrow(Exception('Database error'));

      expect(
        () async => await favoriteChange.removeFavorite(movieId: testMovieId),
        throwsA(isA<Exception>()),
      );
      verify(mockRepository.removeFavorite(movieId: testMovieId)).called(1);
    });

    test('should return true when movie is favorite', () async {
      const testMovieId = 1;
      when(mockRepository.isFavorite(movieId: testMovieId))
          .thenAnswer((_) async => true);

      final result = await favoriteChange.isFavorite(movieId: testMovieId);

      expect(result, true);
      verify(mockRepository.isFavorite(movieId: testMovieId)).called(1);
    });

    test('should return false when movie is not favorite', () async {
      const testMovieId = 1;
      when(mockRepository.isFavorite(movieId: testMovieId))
          .thenAnswer((_) async => false);

      final result = await favoriteChange.isFavorite(movieId: testMovieId);

      expect(result, false);
      verify(mockRepository.isFavorite(movieId: testMovieId)).called(1);
    });

    test('should return false when isFavorite throws error', () async {
      const testMovieId = 1;
      when(mockRepository.isFavorite(movieId: testMovieId))
          .thenThrow(Exception('Database error'));

      final result = await favoriteChange.isFavorite(movieId: testMovieId);

      expect(result, false);
      verify(mockRepository.isFavorite(movieId: testMovieId)).called(1);
    });
  });
}
