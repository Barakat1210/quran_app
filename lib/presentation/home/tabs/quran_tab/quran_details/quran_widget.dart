import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String verseItem;
  VerseWidget({super.key, required this.verseItem});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          alignment: Alignment.center,
          child: Text(
            verseItem,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
