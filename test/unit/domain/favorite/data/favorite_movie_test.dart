import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_test/hive_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/favorite_repository.dart';
import 'package:movie_db_app_getx/domain/usecase/favorite_movie.dart';

@GenerateMocks([FavoriteRepository])
import 'favorite_movie_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockFavoriteRepository mockRepository;
  late FavoriteMovie favoriteMovie;
  late Box<MovieModel> testBox;
  late List<MovieModel> testMovies;

  setUpAll(() async {
    await setUpTestHive();
    Hive.init('test/hive');
    if (!Hive.isAdapterRegistered(MovieModelAdapter().typeId)) {
      Hive.registerAdapter(MovieModelAdapter());
    }
  });

  setUp(() async {
    mockRepository = MockFavoriteRepository();
    favoriteMovie = FavoriteMovie(repository: mockRepository);
    testBox = await Hive.openBox<MovieModel>('favorite_movie');

    testMovies = [
      const MovieModel(
        id: 1,
        title: 'Inception',
        originalLanguage: 'en',
        originalTitle: 'Inception',
      ),
      const MovieModel(
        id: 2,
        title: 'Interstellar',
        originalLanguage: 'en',
        originalTitle: 'Interstellar',
      ),
    ];

    await testBox.clear();
  });

  tearDown(() async {
    await testBox.clear();
  });

  tearDownAll(() async {
    await testBox.close();
    await Hive.close();
  });

  group('FavoriteMovie UseCase', () {
    test('should return list of favorite movies when successful', () async {
      when(mockRepository.getFavoriteMovie())
          .thenAnswer((_) async => testMovies);
      when(mockRepository.openBoxFavoriteMovie())
          .thenAnswer((_) async => testBox);

      final result = await favoriteMovie.call();

      expect(result, equals(testMovies));
      verify(mockRepository.getFavoriteMovie()).called(1);
    });

    test('should return empty list when no favorites exist', () async {
      when(mockRepository.getFavoriteMovie()).thenAnswer((_) async => []);
      when(mockRepository.openBoxFavoriteMovie())
          .thenAnswer((_) async => testBox);

      final result = await favoriteMovie.call();

      expect(result, isEmpty);
      verify(mockRepository.getFavoriteMovie()).called(1);
    });

    test('should return empty list when repository throws exception', () async {
      when(mockRepository.getFavoriteMovie())
          .thenThrow(Exception('Database error'));
      when(mockRepository.openBoxFavoriteMovie())
          .thenAnswer((_) async => testBox);

      final result = await favoriteMovie.call();

      expect(result, isEmpty);
      verify(mockRepository.getFavoriteMovie()).called(1);
    });

    test('should successfully open favorite movies box', () async {
      when(mockRepository.openBoxFavoriteMovie())
          .thenAnswer((_) async => testBox);

      final box = await favoriteMovie.openBox();

      expect(box, isNotNull);
      expect(box, equals(testBox));
      verify(mockRepository.openBoxFavoriteMovie()).called(1);
    });

    test('should handle error when opening box fails', () async {
      when(mockRepository.openBoxFavoriteMovie())
          .thenThrow(Exception('Box opening failed'));

      expect(
        () async => await favoriteMovie.openBox(),
        throwsA(isA<Exception>()),
      );
    });
  });
}
