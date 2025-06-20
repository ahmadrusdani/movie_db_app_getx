import 'dart:convert';

import 'package:flutter/services.dart';

Future<Map<String, dynamic>> readJson(String path) async {
  final jsonString = await rootBundle.loadString(path);
  return json.decode(jsonString) as Map<String, dynamic>;
}