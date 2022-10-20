import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pixel_app/bloc/image_details/image_details_bloc.dart';

import 'package:pixel_app/constants/constants.dart';

import 'package:pixel_app/screens/widgets/comment_text_field.dart';
import 'package:pixel_app/screens/image_download/image_download.dart';

import 'package:pixel_app/screens/widgets/reusable_icon_text.dart';
import 'package:pixel_app/screens/widgets/widgets.dart';

class ImageDetails extends StatelessWidget {
  ImageDetails(
      {Key? key,
      required this.profileImage,
      required this.tags,
      required this.backgroundImage,
      required this.likes,
      required this.name,
      required this.year,
      required this.monthDay,
      required this.time})
      : super(key: key);
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<ImageDetailsBloc>(context).add(const LoadCommentList());
    });
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
                          reusableText("$monthDay $year", 13.81,
                              FontWeight.w500, const Color(0XFF575757)),
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
            Container(
              height: 375,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(backgroundImage), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 29.08, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableIconText(text: likes, icon: natureLike),
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
                            builder: (context) => ImageDownloadScreen(
                              backgroundImage: backgroundImage,
                              likes: likes,
                              name: name,
                              profileImage: profileImage,
                              tags: tags,
                              monthDay: monthDay,
                              time: time,
                              year: year,
                            ),
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
                    child: BlocBuilder<ImageDetailsBloc, ImageDetailsState>(
                        builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                            child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ));
                      } else if (state.isError) {
                        return const Center(
                          child: Text("Error while loading Comment List"),
                        );
                      } else if (state.commentList.isEmpty) {
                        return const Center(
                            child: Text("comment List is Empty"));
                      }
                      return ListView.separated(
                          itemBuilder: (context, index) {
                            final commentList = state.commentList[index];

                            String time = '';
                            String monthDay = '';
                            String year = '';
                            try {
                              final dateTime = commentList.publishDate;
                              print(dateTime.toString());
                              time = DateFormat.jm()
                                  .format(commentList.publishDate);
                              print(time);

                              final date = DateFormat.yMMMMd('en_US')
                                  .format(commentList.publishDate);

                              print(date);
                              monthDay = date.split(',').first;
                              year = date.split(',').last;
                            } catch (_) {
                              time = '';
                              monthDay = '';
                              year = '';
                            }

                            return SizedBox(
                              height: 131,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 10, top: 14),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage: NetworkImage(
                                              commentList.owner.picture),
                                        ),
                                        kWidth(10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            reusableText(
                                                commentList.owner.firstName,
                                                21,
                                                FontWeight.w500,
                                                const Color(0XFF3E3E3E)),
                                            Row(
                                              children: [
                                                reusableText(
                                                    "$monthDay $year",
                                                    13.80,
                                                    FontWeight.w500,
                                                    const Color(0XFF575757)),
                                                kWidth(14.43),
                                                reusableText(
                                                   time,
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
                                    padding: const EdgeInsets.only(
                                        left: 90, top: 12),
                                    child: Row(
                                      children: [
                                        reusableText(
                                            commentList.message,
                                            18,
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
                          itemCount: state.commentList.length
                          // isLoad ? 10 : 2
                          );
                    }),
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
