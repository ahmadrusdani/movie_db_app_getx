import 'package:flutter/material.dart';
import 'package:movie_db_app_getx/core/theme/text_styles.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String value;

  const InfoSection({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.regular14.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyles.bold16,
          ),
        ],
      ),
    );
  }
}
