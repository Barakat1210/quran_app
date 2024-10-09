import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:eslam_quran/core/core/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SuraName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        color: Theme.of(context).dividerColor,
        width: 2,
      ))),
      child: IntrinsicHeight(
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
              flex: 2,
                child: Text(AppLocalizations.of(context)!.quranTab,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
            Expanded(
              flex: 1,
                child: VerticalDivider(
              color: Theme.of(context).dividerColor,
              thickness: 2,
              width: 2,
            )),
            Expanded(
              flex: 2,
                child: Text(
                  AppLocalizations.of(context)!.versesNumber,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ],
        ),
      ),
    );
  }
}
