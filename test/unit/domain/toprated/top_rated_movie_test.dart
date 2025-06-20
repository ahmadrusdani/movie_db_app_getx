import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_test/hive_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_db_app_getx/data/model/base/base_response.dart';
import 'package:movie_db_app_getx/data/model/genre/genre_model.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/movie_repository.dart';
import 'package:movie_db_app_getx/domain/usecase/top_rated_movie.dart';
import '../../utils/json_decoder.dart';

@GenerateMocks([MovieRepository])
import 'top_rated_movie_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockMovieRepository mockRepository;
  late TopRatedMovie topRatedMovie;
  late Box<MovieModel> testBox;
  late BaseResponseList<List<MovieModel>> testResponse;

  setUpAll(() async {
    await setUpTestHive();
    Hive.init('test/hive');
    if (!Hive.isAdapterRegistered(MovieModelAdapter().typeId)) {
      Hive.registerAdapter(MovieModelAdapter());
    }
    if (!Hive.isAdapterRegistered(GenreModelAdapter().typeId)) {
      Hive.registerAdapter(GenreModelAdapter());
    }
  });

  setUp(() async {
    mockRepository = MockMovieRepository();
    topRatedMovie = TopRatedMovie(repository: mockRepository);
    testBox = await Hive.openBox<MovieModel>('top_rated_movie');
    final json = await readJson('test/json/movies.json');
    testResponse = BaseResponseList<List<MovieModel>>.fromJson(
      json,
      (json) {
        final list = (json as List);
        if (list.isEmpty) return [];
        return list
            .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  });

  tearDown(() async {
    await testBox.clear();
  });

  tearDownAll(() async {
    await testBox.close();
    await Hive.close();
  });

  group('TopRatedMovie UseCase', () {
    test('should store movies and return response when successful (page 1)',
        () async {
      when(mockRepository.getTopRatedMovie(page: 1))
          .thenAnswer((_) async => testResponse);

      final result = await topRatedMovie.call(page: 1);

      expect(result, equals(testResponse));
      verify(mockRepository.getTopRatedMovie(page: 1)).called(1);

      expect(testBox.length, equals(20));
      expect(testBox.get(1284120)?.title, equals('The Ugly Stepsister'));
      expect(testBox.get(757725)?.title, equals('Shadow Force'));
    });

    test('should append movies without clearing box when page > 1', () async {
      await testBox.putAll({1: testResponse.results![0]});
      when(mockRepository.getTopRatedMovie(page: 2))
          .thenAnswer((_) async => testResponse.copyWith(page: 2));

      final result = await topRatedMovie.call(page: 2);

      expect(result?.page, equals(2));
      expect(testBox.length, equals(21)); 
    });

    test('should return cached movies when error occurs on page 1', () async {
      await testBox
          .putAll({1284120: testResponse.results![0], 757725: testResponse.results![1]});
      when(mockRepository.getTopRatedMovie(page: 1))
          .thenThrow(Exception('Network error'));

      final result = await topRatedMovie.call(page: 1);

      expect(result?.results?.length, equals(2)); 
      expect(result?.page, equals(1)); 
      verify(mockRepository.getTopRatedMovie(page: 1)).called(1);
    });

    test('should return preview of cached movies when isPreview=true',
        () async {
      final manyMovies = List.generate(
          25,
          (i) => MovieModel(
                id: i,
                title: 'Movie $i',
                originalLanguage: 'en',
                originalTitle: '',
              ));
      await testBox.putAll({for (var movie in manyMovies) movie.id: movie});
      when(mockRepository.getTopRatedMovie(page: 1))
          .thenThrow(Exception('Network error'));

      final result = await topRatedMovie.call(page: 1, isPreview: true);

      expect(result?.results?.length, equals(20));
    });

    test('should throw exception when no cache exists and error occurs',
        () async {
      when(mockRepository.getTopRatedMovie(page: 2))
          .thenThrow(Exception('Network error'));

      expect(
        () => topRatedMovie.call(page: 2),
        throwsA(isA<Exception>()),
      );
    });

    test('should clear box when page=1 and new data arrives', () async {
      await testBox.putAll({
        3: const MovieModel(
          id: 3,
          title: 'Old Movie',
          originalLanguage: 'en',
          originalTitle: '',
        )
      });
      when(mockRepository.getTopRatedMovie(page: 1))
          .thenAnswer((_) async => testResponse);

      await topRatedMovie.call(page: 1);

      expect(testBox.get(3), isNull);
      expect(testBox.length, equals(20));
    });
  });
}
