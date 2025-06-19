import 'dart:async';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_db_app_getx/domain/usecase/favorite_movie.dart';
import '../../../data/model/movie/movie_model.dart';

class FavoriteController extends GetxController {
  FavoriteController({required this.favoriteUseCase});

  final FavoriteMovie favoriteUseCase;

  Future<Box<MovieModel>?> open() => favoriteUseCase.openBox();

}
