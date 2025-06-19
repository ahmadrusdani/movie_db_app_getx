import 'package:intl/intl.dart';

class Formatter {
  static String formatFullDate(DateTime dateStr) {
    return DateFormat('d MMMM yyyy', 'id_ID').format(dateStr); // ex: 28 April 2025
  }

  static String formatMonthYear(DateTime dateStr) {
    return DateFormat('MMMM yyyy', 'id_ID').format(dateStr); // ex: April 2025
  }

  static String formatTime(DateTime dateTimeStr) {
    return DateFormat('HH:mm').format(dateTimeStr); // ex: 07:01
  }
}