import 'package:eslam_quran/core/core/routes_manager.dart';
import 'package:eslam_quran/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:flutter/material.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});
  HadithItem hadith;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.HadithDetailsRoute,
          arguments: hadith,
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
