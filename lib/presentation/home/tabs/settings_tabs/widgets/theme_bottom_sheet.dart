import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedThemeItem(AppLocalizations.of(context)!.ligth),
          SizedBox(height: 18,),
          buildUnSelectedThemeItem(AppLocalizations.of(context)!.dark),
        ],
      ),
    );
  }

  Widget buildSelectedThemeItem(String text){
  return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text(text,
  style: Theme.of(context).textTheme.bodyMedium),
  Icon(
  Icons.check,
  size: 30,
  color: Theme.of(context).dividerColor,
  ),
  ],
  );}
  Widget buildUnSelectedThemeItem(String text){
    return Text(text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.black,
        ));}
}
