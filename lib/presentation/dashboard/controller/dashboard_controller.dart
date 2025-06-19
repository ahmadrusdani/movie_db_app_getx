import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_db_app_getx/presentation/favorite/view/favorite_page.dart';
import 'package:movie_db_app_getx/presentation/home/view/home_page.dart';

class DashboardController extends GetxController {
  DashboardController();

  final currentIndex = 0.obs;

  final List<Widget> tabs = const <Widget>[
    HomePage(),
    FavoritePage(),
  ];
}
