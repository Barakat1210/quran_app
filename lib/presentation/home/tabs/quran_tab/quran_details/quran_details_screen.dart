import 'package:eslam_quran/config/theme/my_theme.dart';
import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/presentation/home/tabs/quran_tab/quran_details/quran_widget.dart';
import 'package:eslam_quran/presentation/home/tabs/quran_tab/widget/quran_title_wiget/quran_title_widget.dart';
import 'package:eslam_quran/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
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
//   super.initState();
//
//    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
//     readFile(args.index);
// }
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) readFile(args.index);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getBackgroundImage()),
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
