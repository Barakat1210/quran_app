import 'package:eslam_quran/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.changeAppLan('en');
              },
              child: provider.englishIsSelected()
                  ? buildSelectedLanguage(AppLocalizations.of(context)!.english)
                  : buildUnSelectedLanguage(
                      AppLocalizations.of(context)!.english,
                    )),
          SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              provider.changeAppLan('ar');
            },
            child: provider.arabicIsSelected()
                ? buildSelectedLanguage(AppLocalizations.of(context)!.arabic)
                : buildUnSelectedLanguage(
                    AppLocalizations.of(context)!.arabic,
                  ),
          ),
        ],
      ),
    );
  }

  Widget buildSelectedLanguage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).dividerColor,
        ),
      ],
    );
  }

  Widget buildUnSelectedLanguage(String text) {
    return Text(AppLocalizations.of(context)!.arabic,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.black,
            ));
  }
}
