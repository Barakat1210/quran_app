import 'package:eslam_quran/config/theme/my_theme.dart';
import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/core/core/strings_manager.dart';
import 'package:eslam_quran/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:eslam_quran/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:eslam_quran/presentation/home/tabs/settings_tabs/settings_tab.dart';
import 'package:eslam_quran/presentation/home/tabs/tasbeh_tab/sebha_tab.dart';
import 'package:flutter/material.dart';
import 'tabs/quran_tab/quaran_tab.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}
class _Home_ScreenState extends State<Home_Screen> {
  List<Widget>tabs=[
    QuaranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.isDarkEnabled?
                AssetsManager.darkMainBg:AssetsManager.lightMainBg,
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            Strings_Manager.appTitle,
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: BottomNavigationBar(
            onTap: (value){
              setState(() {
                selectedindex=value;
              });
            },
             currentIndex: selectedindex,
            iconSize: 20,
            items: [
              BottomNavigationBarItem(backgroundColor:Theme.of(context).dividerColor,
                icon:  ImageIcon(AssetImage(
                  AssetsManager.QuaranIcon,
                ),),
                label:Strings_Manager.quranLabel,
              ),
              BottomNavigationBarItem(backgroundColor: Theme.of(context).dividerColor,
                icon: ImageIcon(AssetImage(
                  AssetsManager.HadithIcon,
                ),),
                label: Strings_Manager.hadithLabel,
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).dividerColor,
                icon:  ImageIcon(AssetImage(
                  AssetsManager.SebhaIcon,
                ),),
                label: Strings_Manager.tasbehLabel,
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).dividerColor,
                icon:  ImageIcon(AssetImage(
                  AssetsManager.RadioIcon,
                ),),
                label: Strings_Manager.radioLabel,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).dividerColor,
                icon:Icon(Icons.settings),
                label: Strings_Manager.settingsLabel,
              ),
            ],
          ),
        ),
        body:tabs[selectedindex],
      ),
    );
  }
}
