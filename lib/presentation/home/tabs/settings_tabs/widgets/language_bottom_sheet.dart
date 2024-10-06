import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'English',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Icon(
                Icons.check,
                size: 30,
                color: Theme.of(context).dividerColor,
              ),
            ],
          ),
          Text('Arabic',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.black,
                  )),
        ],
      ),
    );
  }
}
