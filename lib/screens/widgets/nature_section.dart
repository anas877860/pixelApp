import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pixel_app/bloc/search_home/search_home_bloc.dart';
import 'package:pixel_app/constants/constants.dart';

import 'package:pixel_app/screens/image_details/image_details.dart';
import 'package:pixel_app/screens/widgets/reusable_icon_text.dart';
import 'package:provider/provider.dart';

class NatureSection extends StatelessWidget {
  const NatureSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchHomeBloc>(context).add(const LoadPostList());
    });

    return BlocBuilder<SearchHomeBloc, SearchHomeState>(
        builder: (context, state) {
      final post = state.postList;
      //  print( value.postList[1].image.toString());
      if (state.isLoading) {
        return const Center(
            child: CircularProgressIndicator(
          strokeWidth: 2,
        ));
      } else if (state.isError) {
        return const Center(
          child: Text("Error while loading postList"),
        );
      } else if (state.postList.isEmpty) {
        return const Center(child: Text("PostList is Empty"));
      }
      return ListView.builder(
          itemCount: post.length,
          itemBuilder: (BuildContext context, int index) {
            final homeList = state.postList[index];
            String monthDay = '';
            String year = '';
            String time = '';
            try {
              final _dateTime = homeList.publishDate;
              print(_dateTime.toString());
              final formatedDate = DateFormat.yMMMMd('en_US').format(_dateTime);

              print(formatedDate);
              year = formatedDate.split(', ')[1];
              monthDay = formatedDate.split(', ')[0];

              print(monthDay);
              print(year);
              time = DateFormat.jm().format(_dateTime);
              print(time);
            } catch (_) {
              monthDay = '';
              year = '';
              time = '';
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageDetails(
                                backgroundImage: homeList.image,
                                likes: homeList.likes.toString(),
                                profileImage: homeList.owner.picture,
                                tags: homeList.tags,
                                name: homeList.owner.firstName,
                                monthDay: monthDay,
                                time: time,
                                year: year,
                              )));
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
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage(homeList.owner.picture),
                          ),
                          kWidth(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              reusableText(homeList.owner.firstName, 17,
                                  FontWeight.w500, const Color(0XFF3E3E3E)),
                              Row(
                                children: [
                                  reusableText("$monthDay $year", 10,
                                      FontWeight.w500, const Color(0XFF575757)),
                                  kWidth(11),
                                  reusableText(time, 10, FontWeight.w500,
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
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(homeList.image),
                              fit: BoxFit.cover),
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
                                          "#${homeList.tags[0]}",
                                          18,
                                          FontWeight.w400,
                                          const Color.fromRGBO(
                                              0, 112, 193, 0.49)),
                                      kWidth(7),
                                      reusableText(
                                          "#${homeList.tags[1]}",
                                          18,
                                          FontWeight.w400,
                                          const Color.fromRGBO(
                                              0, 112, 193, 0.49)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      reusableText(
                                          "#${homeList.tags[2]}",
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
                            ReusableIconText(
                                text: homeList.likes.toString(),
                                icon: natureLike),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
    });
  }
}
