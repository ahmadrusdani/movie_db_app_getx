import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_test/hive_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_db_app_getx/data/model/collection/collection_model.dart';
import 'package:movie_db_app_getx/data/model/company/production_company_model.dart';
import 'package:movie_db_app_getx/data/model/country/production_country_model.dart';
import 'package:movie_db_app_getx/data/model/detail/movie_detail_model.dart';
import 'package:movie_db_app_getx/data/model/genre/genre_model.dart';
import 'package:movie_db_app_getx/data/model/spoken/spoken_language_model.dart';
import 'package:movie_db_app_getx/domain/repository/movie_repository.dart';
import 'package:movie_db_app_getx/domain/usecase/detail_movie.dart';

@GenerateMocks([MovieRepository])
import 'detail_movie_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockMovieRepository mockRepository;
  late DetailMovie detailMovieUseCase;
  late Box<MovieDetailModel> testBox;
  late MovieDetailModel testMovieDetail;
  const testMovieId = 574475;

  Future<MovieDetailModel> _loadTestMovieDetail() async {
    final jsonString =
        await rootBundle.loadString('test/json/detail_movie.json');
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
    return MovieDetailModel.fromJson(jsonMap);
  }

  setUpAll(() async {
    await setUpTestHive();
    Hive.init('test/hive');
    if (!Hive.isAdapterRegistered(MovieDetailModelAdapter().typeId)) {
      Hive.registerAdapter(MovieDetailModelAdapter());
    }
    if (!Hive.isAdapterRegistered(CollectionModelAdapter().typeId)) {
      Hive.registerAdapter(CollectionModelAdapter());
    }
    if (!Hive.isAdapterRegistered(ProductionCountryModelAdapter().typeId)) {
      Hive.registerAdapter(ProductionCountryModelAdapter());
    }
    if (!Hive.isAdapterRegistered(ProductionCompanyModelAdapter().typeId)) {
      Hive.registerAdapter(ProductionCompanyModelAdapter());
    }
    if (!Hive.isAdapterRegistered(SpokenLanguageModelAdapter().typeId)) {
      Hive.registerAdapter(SpokenLanguageModelAdapter());
    }
    if (!Hive.isAdapterRegistered(GenreModelAdapter().typeId)) {
      Hive.registerAdapter(GenreModelAdapter());
    }
  });

  setUp(() async {
    mockRepository = MockMovieRepository();
    detailMovieUseCase = DetailMovie(repository: mockRepository);
    testBox = await Hive.openBox<MovieDetailModel>('movie_detail');
    testMovieDetail = await _loadTestMovieDetail();
  });

  tearDown(() async {
    await testBox.clear();
  });

  tearDownAll(() async {
    await testBox.close();
    await tearDownTestHive();
  });

  group('DetailMovie UseCase Tests', () {
    test('should return and store movie detail when repository succeeds',
        () async {
      when(mockRepository.getDetailMovie(movieId: testMovieId))
          .thenAnswer((_) async => testMovieDetail);

      final result = await detailMovieUseCase.call(movieId: testMovieId);

      expect(result, equals(testMovieDetail));
      expect(result?.id, equals(testMovieId));

      verify(mockRepository.getDetailMovie(movieId: testMovieId)).called(1);

      final storedData = testBox.get(testMovieId);
      expect(storedData, equals(testMovieDetail));
    });

    test('should return cached movie when repository throws exception',
        () async {
      await testBox.put(testMovieId, testMovieDetail);
      when(mockRepository.getDetailMovie(movieId: testMovieId))
          .thenThrow(Exception('Network error'));

      final result = await detailMovieUseCase.call(movieId: testMovieId);

      expect(result, equals(testMovieDetail));
      verify(mockRepository.getDetailMovie(movieId: testMovieId)).called(1);
    });

    test('should throw when no cache exists and repository fails', () async {
      await testBox.clear();
      when(mockRepository.getDetailMovie(movieId: testMovieId))
          .thenThrow(Exception('Network error'));

      verifyZeroInteractions(mockRepository);

      final futureCall = detailMovieUseCase.call(movieId: testMovieId);

      await expectLater(
        futureCall,
        throwsA(
          allOf(
            isA<Exception>(),
            predicate((e) => e.toString().contains('Network error')),
          ),
        ),
        reason: 'Should throw Exception with network error message',
      );

      verify(mockRepository.getDetailMovie(movieId: testMovieId)).called(1);
      verifyNoMoreInteractions(mockRepository);

      expect(testBox.get(testMovieId), isNull,
          reason: 'No data should be cached');
    });

    test('should return null when movie is not found', () async {
      const nonExistentMovieId = 931233;
      when(mockRepository.getDetailMovie(movieId: nonExistentMovieId))
          .thenAnswer((_) async => null);

      final result = await detailMovieUseCase.call(movieId: nonExistentMovieId);

      expect(result, isNull);
      verify(mockRepository.getDetailMovie(movieId: nonExistentMovieId))
          .called(1);
      expect(testBox.get(nonExistentMovieId), isNull);
    });
  });
}
