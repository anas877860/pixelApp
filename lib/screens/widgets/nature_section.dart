import 'package:flutter/material.dart';
import 'package:pixel_app/constants/constants.dart';

import 'package:pixel_app/screens/image_details/image_details.dart';
import 'package:pixel_app/screens/widgets/reusable_icon_text.dart';


class NatureSection extends StatelessWidget {
  const NatureSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageDetails()));
              },
              child: Container(
                height: 311,
                width: 389,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(natureProfilePic),
                        ),
                        kWidth(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            reusableText("John Doe", 17, FontWeight.w500,
                                const Color(0XFF3E3E3E)),
                            Row(
                              children: [
                                reusableText("Sep 24 2022", 10, FontWeight.w500,
                                    const Color(0XFF575757)),
                                kWidth(11),
                                reusableText("01:10 PM", 10, FontWeight.w500,
                                    const Color(0XFF575757))
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.download,
                            size: 28,
                            color: Color(0XFFC3C3C3),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 176,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(natureImage), fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0XFFFDFDFD),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17, top: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    reusableText(
                                        "#Nature",
                                        18,
                                        FontWeight.w400,
                                        const Color.fromRGBO(
                                            0, 112, 193, 0.49)),
                                    kWidth(7),
                                    reusableText(
                                        "#Mountains",
                                        18,
                                        FontWeight.w400,
                                        const Color.fromRGBO(
                                            0, 112, 193, 0.49)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    reusableText(
                                        "#Nature_lover",
                                        18,
                                        FontWeight.w400,
                                        const Color.fromRGBO(
                                            0, 112, 193, 0.49)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          const ReusableIconText(
                            text: '300',
                            icon: natureComment,
                          ),
                          const ReusableIconText(
                              text: "1.5K", icon: natureLike),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
