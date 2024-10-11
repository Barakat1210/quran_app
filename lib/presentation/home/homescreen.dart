import 'package:eslam_quran/config/theme/my_theme.dart';
import 'package:eslam_quran/core/core/assets_manager.dart';
import 'package:eslam_quran/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:eslam_quran/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:eslam_quran/presentation/home/tabs/settings_tabs/settings_tab.dart';
import 'package:eslam_quran/presentation/home/tabs/tasbeh_tab/sebha_tab.dart';
import 'package:eslam_quran/provider/sebha_provider.dart';
import 'package:eslam_quran/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tabs/quran_tab/quaran_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<Widget> tabs = [
    QuaranTab(),
    HadethTab(),
    ChangeNotifierProvider(create:(context)=>SebhaProvider(),child: TasbehTab()),
    RadioTab(),
    SettingsTab(),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text(
            AppLocalizations.of(context)!.appTitle,
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor,
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedindex = value;
              });
            },
            currentIndex: selectedindex,
            iconSize: 20,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    AssetsManager.QuaranIcon,
                  ),
                ),
                label: AppLocalizations.of(context)!.quranTab,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    AssetsManager.HadithIcon,
                  ),
                ),
                label: AppLocalizations.of(context)!.hadithTab,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    AssetsManager.SebhaIcon,
                  ),
                ),
                label:AppLocalizations.of(context)!.tasbehTab,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    AssetsManager.RadioIcon,
                  ),
                ),
                label: AppLocalizations.of(context)!.radioTab,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settingsTab,
              ),
            ],
          ),
        ),
        body: tabs[selectedindex],
      ),
    );
  }
}
