import 'package:flutter/material.dart';

import 'package:pixel_app/constants/constants.dart';

import 'package:pixel_app/screens/widgets/comment_text_field.dart';

import 'package:pixel_app/screens/widgets/reusable_icon_text.dart';

class ImageDownloadScreen extends StatelessWidget {
  ImageDownloadScreen({Key? key, required this.profileImage, required this.tags, required this.backgroundImage, required this.likes, required this.name, required this.year, required this.monthDay, required this.time}) : super(key: key);
  ValueNotifier<bool> isLoadMoreNotifier = ValueNotifier(false);
 final String profileImage;
   final List<String> tags;
   final String backgroundImage;
   final String likes;
   final String name;
   final String year;
   final String monthDay;
   final String time;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: assetImage(backIcon)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: size.height * 0.065),
              child: Row(
                children: [
                 CircleAvatar(
                    radius: 27.62,
                    backgroundImage: NetworkImage(profileImage),
                  ),
                  kWidth(14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText(name, 23.48, FontWeight.w500,
                          const Color(0XFF3E3E3E)),
                      Row(
                        children: [
                          reusableText("$monthDay $year", 13.81, FontWeight.w500,
                              const Color(0XFF575757)),
                          kWidth(18),
                          reusableText(
                            time,
                            13.81,
                            FontWeight.w500,
                            const Color(0XFF575757),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      reusableText(
                      '#${tags[0]}',
                        18,
                        FontWeight.w400,
                        const Color.fromRGBO(0, 112, 193, 0.49),
                      ),
                      kWidth(7),
                      reusableText(
                         '#${tags[1]}',
                        18,
                        FontWeight.w400,
                        const Color.fromRGBO(0, 112, 193, 0.49),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      reusableText(
                        '#${tags[2]}',
                        18,
                        FontWeight.w400,
                        const Color.fromRGBO(0, 112, 193, 0.49),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kHeight(29),
            Stack(
              children: [
                Container(
                  height: 375,
                  decoration:  BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(backgroundImage),fit: BoxFit.cover)),
                ),
                Positioned(
                  right: 20,
                  top: 24.02,
                  child: assetImage(downloadImageButton)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 29.08, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  ReusableIconText(text: likes, icon: natureLike),
                  // ReusableElevatedButton(
                  //     fontSize: 17,
                  //     fontWeight: FontWeight.w600,
                  //     buttonWidth: 120,
                  //     buttonHeight: 50,
                  //     size: size,
                  //     text: "Download",
                  //     onPressed: () {},
                  //     isButtonWidth: true),
                ],
              ),
            ),
            const CommentTextField(),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, top: 40),
            //   child: Row(
            //     children: [
            //       reusableText(
            //         "Comments",
            //         24,
            //         FontWeight.w600,
            //         const Color(0XFF4F4F4F),
            //       ),
            //       kWidth(14),
            //       reusableText(
            //         "(300)",
            //         16,
            //         FontWeight.w400,
            //         const Color(0XFF4F4F4F),
            //       ),
            //     ],
            //   ),
            // ),
            // kHeight(49),
            // ValueListenableBuilder(
            //     valueListenable: isLoadMoreNotifier,
            //     builder: (BuildContext context, bool isLoad, Widget? _) {
            //       return SizedBox(
            //         height: isLoad ? 1310 : 262,
            //         child: ListView.separated(
            //             itemBuilder: (context, index) {
            //               return SizedBox(
            //                 height: 131,
            //                 child: Column(
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.only(
            //                           left: 20, right: 10, top: 14),
            //                       child: Row(
            //                         children: [
            //                           const CircleAvatar(
            //                             radius: 30,
            //                             backgroundImage:
            //                                 AssetImage(commentProfile),
            //                           ),
            //                           kWidth(10),
            //                           Column(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.start,
            //                             children: [
            //                               reusableText(
            //                                   "Jose Jacob",
            //                                   21,
            //                                   FontWeight.w500,
            //                                   const Color(0XFF3E3E3E)),
            //                               Row(
            //                                 children: [
            //                                   reusableText(
            //                                       "Sep 24 2022",
            //                                       13.80,
            //                                       FontWeight.w500,
            //                                       const Color(0XFF575757)),
            //                                   kWidth(14.43),
            //                                   reusableText(
            //                                       "01:20 PM",
            //                                       13.80,
            //                                       FontWeight.w500,
            //                                       const Color(0XFF575757)),
            //                                 ],
            //                               )
            //                             ],
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: const EdgeInsets.only(left: 90),
            //                       child: Row(
            //                         children: [
            //                           reusableText(
            //                               "What an awesome click mahn",
            //                               20,
            //                               FontWeight.w400,
            //                               const Color(0XFF575757))
            //                         ],
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               );
            //             },
            //             separatorBuilder: (context, index) {
            //               return const Divider(
            //                 color: Color(0XFFBDBDBD),
            //                 thickness: 1,
            //               );
            //             },
            //             itemCount: isLoad ? 10 : 2),
            //       );
            //     }),
            // const Divider(
            //   color: Color(0XFFBDBDBD),
            //   thickness: 1,
            // ),
            // kHeight(25),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     TextButton(
            //       onPressed: () {
            //         isLoadMoreNotifier.value = true;
            //         isLoadMoreNotifier.notifyListeners();
            //       },
            //       child:
            //           reusableText("Load more", 20, FontWeight.w600, blueColor),
            //     ),
            //     kWidth(20),
            //   ],
            // ),
            // ValueListenableBuilder(
            //     valueListenable: isLoadMoreNotifier,
            //     builder: (BuildContext context, bool isLoad, Widget? _) {
            //       return isLoad ? kHeight(30) : kHeight(500);
            //     }),
          ],
        ),
      ),
    );
  }
}
