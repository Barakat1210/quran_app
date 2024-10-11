import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/presentation/home/tabs/hadeth_tab/widgets/hadith_header_name.dart';
import 'package:eslam_quran/presentation/home/tabs/hadeth_tab/widgets/hadith_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});
  @override
  State<HadethTab> createState() => _HadethTabState();
}
class _HadethTabState extends State<HadethTab> {
  List<HadithItem> allHadithList = [];
  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) readHadithFile();
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(AssetsManager.HadithHeaderImage),
        ),
        HadithHeaderName(),
        Expanded(
          flex: 3,
          child: ListView.separated(
            separatorBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              color: Theme.of(context).dividerColor,
              height: 2,
            ),
            itemBuilder: (context, index) =>
                HadithTitleWidget(hadith: allHadithList[index]),
            itemCount: allHadithList.length,
          ),
        ),
      ],
    );
  }

  void readHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/quran_tab/ahadeth.txt');
    List<String> hadithItemList = fileContent.split('#');
    for (var hadith in hadithItemList) {
      List<String> hadithLines = hadith.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      HadithItem hadithItem = HadithItem(title: title, content: content);
      allHadithList.add(hadithItem);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String content;
  HadithItem({required this.title, required this.content});
}
