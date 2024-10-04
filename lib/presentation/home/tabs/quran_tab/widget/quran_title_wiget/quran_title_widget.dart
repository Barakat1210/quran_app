import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:eslam_quran/core/core/routes_manager.dart';
import 'package:flutter/material.dart';

class QuranTitleWidget extends StatelessWidget {
  QuranTitleWidget(
      {super.key,
      required this.suratitle,
      required this.numOfVerses,
      required this.index});
  String suratitle;
  String numOfVerses;
  int index;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            RoutesManager.quranDetailsRoute,
            arguments: SuraArgs(suraName: suratitle, index: index),
          );
        },
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                suratitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Expanded(
              flex: 1,
              child: VerticalDivider(
                color: Theme.of(context).dividerColor,
                width: 3,
                thickness: 3,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                numOfVerses,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraArgs {
  String suraName;
  int index;
  SuraArgs({required this.suraName, required this.index});
}
