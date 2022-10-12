import 'package:flutter/material.dart';

import 'package:pixel_app/constants/constants.dart';

import 'package:pixel_app/screens/widgets/comment_text_field.dart';
import 'package:pixel_app/screens/image_download/image_download.dart';

import 'package:pixel_app/screens/widgets/reusable_icon_text.dart';
import 'package:pixel_app/screens/widgets/widgets.dart';

class ImageDetails extends StatelessWidget {
  ImageDetails({Key? key}) : super(key: key);
  ValueNotifier<bool> isLoadMoreNotifier = ValueNotifier(false);

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
                  const CircleAvatar(
                    radius: 27.62,
                    backgroundImage: AssetImage(natureProfilePic),
                  ),
                  kWidth(14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("John Doe", 23.48, FontWeight.w500,
                          const Color(0XFF3E3E3E)),
                      Row(
                        children: [
                          reusableText("Sep 24 2022", 13.81, FontWeight.w500,
                              const Color(0XFF575757)),
                          kWidth(18),
                          reusableText(
                            "01:10 PM",
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
                        "#Nature",
                        18,
                        FontWeight.w400,
                        const Color.fromRGBO(0, 112, 193, 0.49),
                      ),
                      kWidth(7),
                      reusableText(
                        "#Mountains",
                        18,
                        FontWeight.w400,
                        const Color.fromRGBO(0, 112, 193, 0.49),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      reusableText(
                        "#Nature_lover",
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
            Container(
              height: 375,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(natureDetailImage))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 29.08, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ReusableIconText(text: "1.5K", icon: natureLike),
                  ReusableElevatedButton(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      buttonWidth: 120,
                      buttonHeight: 50,
                      size: size,
                      text: "Download",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageDownloadScreen(),
                          ),
                        );
                      },
                      isButtonWidth: true),
                ],
              ),
            ),
            const CommentTextField(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Row(
                children: [
                  reusableText(
                    "Comments",
                    24,
                    FontWeight.w600,
                    const Color(0XFF4F4F4F),
                  ),
                  kWidth(14),
                  reusableText(
                    "(300)",
                    16,
                    FontWeight.w400,
                    const Color(0XFF4F4F4F),
                  ),
                ],
              ),
            ),
            kHeight(49),
            ValueListenableBuilder(
                valueListenable: isLoadMoreNotifier,
                builder: (BuildContext context, bool isLoad, Widget? _) {
                  return SizedBox(
                    height: isLoad ? 1310 : 262,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 131,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 10, top: 14),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                            AssetImage(commentProfile),
                                      ),
                                      kWidth(10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          reusableText(
                                              "Jose Jacob",
                                              21,
                                              FontWeight.w500,
                                              const Color(0XFF3E3E3E)),
                                          Row(
                                            children: [
                                              reusableText(
                                                  "Sep 24 2022",
                                                  13.80,
                                                  FontWeight.w500,
                                                  const Color(0XFF575757)),
                                              kWidth(14.43),
                                              reusableText(
                                                  "01:20 PM",
                                                  13.80,
                                                  FontWeight.w500,
                                                  const Color(0XFF575757)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 90),
                                  child: Row(
                                    children: [
                                      reusableText(
                                          "What an awesome click mahn",
                                          20,
                                          FontWeight.w400,
                                          const Color(0XFF575757))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            color: Color(0XFFBDBDBD),
                            thickness: 1,
                          );
                        },
                        itemCount: isLoad ? 10 : 2),
                  );
                }),
            const Divider(
              color: Color(0XFFBDBDBD),
              thickness: 1,
            ),
            kHeight(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    isLoadMoreNotifier.value = true;
                    isLoadMoreNotifier.notifyListeners();
                  },
                  child:
                      reusableText("Load more", 20, FontWeight.w600, blueColor),
                ),
                kWidth(20),
              ],
            ),
            ValueListenableBuilder(
                valueListenable: isLoadMoreNotifier,
                builder: (BuildContext context, bool isLoad, Widget? _) {
                  return isLoad ? kHeight(30) : kHeight(500);
                }),
          ],
        ),
      ),
    );
  }
}
