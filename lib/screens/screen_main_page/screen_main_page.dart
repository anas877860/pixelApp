import 'package:flutter/material.dart';

import 'package:pixel_app/screens/download/screen_downloads.dart';

import 'package:pixel_app/screens/screen_main_page/widgets/pixel_bottom_navigation.dart';
import 'package:pixel_app/screens/search_home/screen_home.dart';
import 'package:pixel_app/screens/upload/screen_upload.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);
  final _navigateToScreens = const [
    SearchScreenHome(),
    ScreenUpload(),
    ScreenDownload()
  ];
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext context, int index, Widget? _) {
              return _navigateToScreens[index];
            }),
        bottomNavigationBar: PixelBottomNavigation());
  }
}
