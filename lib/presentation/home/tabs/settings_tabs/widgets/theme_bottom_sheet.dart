import 'package:eslam_quran/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
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
                provider.changeAppTheme(ThemeMode.light);
              },
              child: provider.CurrentTheme == ThemeMode.light
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.ligth)
                  : buildUnSelectedThemeItem(
                      AppLocalizations.of(context)!.ligth,
                    )),
          SizedBox(
            height: 18,
          ),
          InkWell(
              onTap: () {
                provider.changeAppTheme(
                  ThemeMode.dark,
                );
              },
              child: provider.CurrentTheme == ThemeMode.dark
                  ? buildSelectedThemeItem(
                      AppLocalizations.of(context)!.dark,
                    )
                  : buildUnSelectedThemeItem(
                      AppLocalizations.of(context)!.dark,
                    )),
        ],
      ),
    );
  }

  Widget buildSelectedThemeItem(String text) {
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

  Widget buildUnSelectedThemeItem(String text) {
    return Text(text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.black,
            ));
  }
}
