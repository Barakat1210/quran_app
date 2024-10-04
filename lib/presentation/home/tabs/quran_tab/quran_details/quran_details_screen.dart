import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/presentation/home/tabs/quran_tab/quran_details/quran_widget.dart';
import 'package:eslam_quran/presentation/home/tabs/quran_tab/widget/quran_title_wiget/quran_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class QuranDetalsScreen extends StatefulWidget {
  QuranDetalsScreen({
    super.key,
  });
  @override
  State<QuranDetalsScreen> createState() => _QuranDetalsScreenState();
}

class _QuranDetalsScreenState extends State<QuranDetalsScreen> {
  List<String> verses = [];
  late SuraArgs args;
  @override
//   void initState() {
//    TODO: implement initState
//   super.initState();
//
//    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
//     readFile(args.index);
// }
  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) readFile(args.index);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.lightMainBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(args.suraName),
          centerTitle: true,
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) =>
                    VerseWidget(verseItem: verses[index]),
                itemCount: verses.length,
              ),
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/quran_tab/${index + 1}.txt');
    var fileLines = fileContent.split('\n');
    verses = fileLines;
    setState(() {});
  }
}
