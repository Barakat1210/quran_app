import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:flutter/material.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AssetsManager.lightMainBg,
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(hadith.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Card(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                child: SingleChildScrollView(
                  child: Text(
                    hadith.content,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
