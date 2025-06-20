import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_db_app_getx/data/model/base/base_response.dart';
import 'package:movie_db_app_getx/data/model/movie/movie_model.dart';
import 'package:movie_db_app_getx/domain/repository/movie_repository.dart';
import 'package:movie_db_app_getx/domain/usecase/search_movie.dart';
import '../../utils/json_decoder.dart';

@GenerateMocks([MovieRepository])
import 'search_movie_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockMovieRepository mockRepository;
  late SearchMovie searchMovie;
  late BaseResponseList<List<MovieModel>> testResponse;

  setUpAll(() async {});

  setUp(() async {
    mockRepository = MockMovieRepository();
    searchMovie = SearchMovie(repository: mockRepository);
    
    final json = await readJson('test/json/search_movie.json');
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

  tearDown(() {
    reset(mockRepository);
  });

  group('SearchMovie UseCase', () {
    test('should return search results when successful', () async {
      const testQuery = 'Avengers';
      when(mockRepository.getSearchMovie(query: testQuery, page: 1))
          .thenAnswer((_) async => testResponse);

      final result = await searchMovie.call(query: testQuery);

      expect(result, equals(testResponse));
      verify(mockRepository.getSearchMovie(query: testQuery, page: 1)).called(1);
    });

    test('should handle pagination correctly', () async {
      const testQuery = 'Avengers';
      const testPage = 2;
      when(mockRepository.getSearchMovie(query: testQuery, page: testPage))
          .thenAnswer((_) async => testResponse.copyWith(page: testPage));

      final result = await searchMovie.call(query: testQuery, page: testPage);

      expect(result?.page, equals(testPage));
      verify(mockRepository.getSearchMovie(query: testQuery, page: testPage)).called(1);
    });

    test('should throw exception when search fails', () async {
      const testQuery = 'InvalidQuery';
      when(mockRepository.getSearchMovie(query: testQuery, page: 1))
          .thenThrow(Exception('Network error'));

      expect(
        () => searchMovie.call(query: testQuery),
        throwsA(isA<Exception>()),
      );
    });

    test('should return null when no results found', () async {
      const testQuery = 'NonExistingMovie';
      when(mockRepository.getSearchMovie(query: testQuery, page: 1))
          .thenAnswer((_) async => null);

      final result = await searchMovie.call(query: testQuery);

      expect(result, isNull);
      verify(mockRepository.getSearchMovie(query: testQuery, page: 1)).called(1);
    });

    test('should handle empty search query', () async {
      const emptyQuery = '';
      when(mockRepository.getSearchMovie(query: emptyQuery, page: 1))
          .thenAnswer((_) async => const BaseResponseList(
                page: 1,
                results: [],
                totalPages: 0,
                totalResults: 0,
              ));

      final result = await searchMovie.call(query: emptyQuery);

      expect(result?.results, isEmpty);
      verify(mockRepository.getSearchMovie(query: emptyQuery, page: 1)).called(1);
    });
  });
}