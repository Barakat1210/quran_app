import 'package:eslam_quran/core/core/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedLanguage(AppLocalizations.of(context)!.english),
          SizedBox(height: 18,),
          buildUnSelectedLanguage(AppLocalizations.of(context)!.arabic),
        ],
      ),
    );
  }
  Widget buildSelectedLanguage(String text){
    return  Row(
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
  Widget buildUnSelectedLanguage(String text){
    return Text(AppLocalizations.of(context)!.arabic,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.black,
        ));
  }
}
