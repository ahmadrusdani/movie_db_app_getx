import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:movie_db_app_getx/app.dart';
import 'package:movie_db_app_getx/data/source/local/init_db.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  final widgetBindings = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetBindings);
  await initializeDateFormatting(Intl.defaultLocale);
  await dotenv.load();
  await InitDB.initialize();
  runApp(const MainApp());
}
