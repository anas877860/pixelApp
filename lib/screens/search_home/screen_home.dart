import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pixel_app/constants/constants.dart';


import 'package:pixel_app/screens/widgets/error_screen.dart';
import 'package:pixel_app/screens/widgets/home_text_field.dart';
import 'package:pixel_app/screens/widgets/nature_section.dart';

class SearchScreenHome extends StatelessWidget {
  const SearchScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Tab> tabs = [
      const Tab(
        text: "Nature",
      ),
      const Tab(
        text: "Beach",
      ),
      const Tab(
        text: "Vehicles",
      ),
      const Tab(
        text: "Models",
      ),
      const Tab(
        text: "Architecture",
      ),
      const Tab(
        text: "Business",
      ),
      const Tab(
        text: "Fashion",
      ),
      const Tab(
        text: "Food & Drink",
      ),
      const Tab(
        text: "Film",
      ),
      const Tab(
        text: "Streat",
      ),
      const Tab(
        text: "Health",
      ),
      const Tab(
        text: "Wellness",
      ),
    ];
    List<Widget> tabsContent = [
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
      const NatureSection(),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.105, left: 21, right: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 36,
                  child: CupertinoSearchTextField(
            
                    padding: const EdgeInsets.only(left: 24),
                    placeholderStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(
                          60,
                          60,
                          67,
                          0.6,
                        ),
                      ),
                    ),
                    backgroundColor: const Color(0XFFFFFFFF),
                    itemSize: 0,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
                kWidth(22),
                const CircleAvatar(
                  backgroundImage: AssetImage(profilePic),
                  radius: 24,
                )
              ],
            ),
            kHeight(30),
            reusableText("Share your snaps with us", 22, FontWeight.w500,
                const Color(0XFF3E3E3E)),
            kHeight(30),
            const HomeTextField(text: "Tap to upload your image", isIcon: true),
            kHeight(20),
            const HomeTextField(
                text: "Add upto four tags  Eg. Mountains", isIcon: false),
            kHeight(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonTheme(
                  minWidth: 110,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      primary: blueColor,
                      padding: const EdgeInsets.only(
                          top: 14, bottom: 14, left: 24.19, right: 24.81),
                      textStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                          color: const Color(0XFFEEF8F0)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ErrorScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Submit",
                    ),
                  ),
                ),
              ],
            ),
            kHeight(26),
            SizedBox(
              height: 30,
              width: 408,
              child: TabBar(
                tabs: tabs,
                isScrollable: true,
                indicatorColor: Colors.transparent,
                labelColor: blueColor,
                unselectedLabelColor: const Color(0XFFC5C5C5),
                labelStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            kHeight(39),
            SizedBox(height: 311, child: TabBarView(children: tabsContent)),
          ],
        ),
      ),
    );
  }
}
