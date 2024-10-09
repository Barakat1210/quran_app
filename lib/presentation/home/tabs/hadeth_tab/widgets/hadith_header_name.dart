import 'package:eslam_quran/core/core/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadithHeaderName extends StatelessWidget {
  const HadithHeaderName({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
                color: Theme.of(context).dividerColor,width: 2,
              ))),
      child: Text(
        AppLocalizations.of(context)!.ahadithName,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
