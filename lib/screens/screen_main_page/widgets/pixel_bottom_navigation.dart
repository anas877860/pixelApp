import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixel_app/constants/constants.dart';

import 'package:pixel_app/screens/screen_main_page/screen_main_page.dart';


class PixelBottomNavigation extends StatelessWidget {
  PixelBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ScreenMainPage.selectedIndexNotifier,
        builder: (BuildContext context, int updatedIndex, Widget? _) {
          return SizedBox(
            height: 83,
            child: BottomNavigationBar(
              elevation: 50,
              backgroundColor: const Color(0XFFEEF8F0),
                selectedItemColor: blueColor,
                unselectedItemColor: const Color.fromARGB(255, 107, 183, 238),
                selectedFontSize: 12,
                unselectedFontSize: 12,
                selectedLabelStyle:  GoogleFonts.poppins(textStyle:const TextStyle(height: 2,fontWeight: FontWeight.w500),),
                unselectedLabelStyle:
                    GoogleFonts.poppins(textStyle:const TextStyle(height: 2,fontWeight: FontWeight.w400),),
                currentIndex: updatedIndex,
                onTap: (newIndex) {
                  ScreenMainPage.selectedIndexNotifier.value = newIndex;
                },
                items: [
                  BottomNavigationBarItem(
                      icon: updatedIndex == 0
                          ? Image.asset(
                              homeIcon,
                              color: blueColor,
                            )
                          : Image.asset(
                              homeIcon,
                              color: const Color.fromARGB(255, 107, 183, 238),
                            ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: updatedIndex == 1
                          ? Image.asset(
                              uploadIcon,
                              color: blueColor,
                            )
                          : Image.asset(
                              uploadIcon,
                              color: const Color.fromARGB(255, 107, 183, 238),
                            ),
                      label: "My Uploads"),
                  BottomNavigationBarItem(
                      icon: updatedIndex == 2
                          ? Image.asset(
                              downloadIcon,
                              color: blueColor,
                            )
                          : Image.asset(
                              downloadIcon,
                              color: const Color.fromARGB(255, 107, 183, 238),
                            ),
                      label: "Downloads")
                ]),
          );
        });
  }
}
