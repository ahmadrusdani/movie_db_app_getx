import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_db_app_getx/presentation/dashboard/controller/dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        // extendBody: true,
        // extendBodyBehindAppBar: true,
        body: controller.tabs[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (int index) => controller.currentIndex.value != index
              ? controller.currentIndex.value = index
              : null,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Movie',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
          ],
        ),
      ),
    );
  }
}
