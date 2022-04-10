import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:furious_fox_assignment/controller/left_column_controller.dart';
import 'package:furious_fox_assignment/views/styles.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:furious_fox_assignment/getXIds.dart' as getXIds;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LeftColumn extends StatelessWidget {
  LeftColumn({Key? key}) : super(key: key);
  LeftColumnController controller = Get.put(LeftColumnController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: true,
      children: [
        // SizedBox(height: 20),
        ProfileCardView(),
        SizedBox(height: 10),
        QuizzesCarouselView(),
        SizedBox(height: 10),
        NewsRedBullView(),
        SizedBox(height: 10),
        InterestsView(),
        SizedBox(height: 20),
      ],
    );
  }
}

class InterestsView extends StatelessWidget {
  const InterestsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.blue[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Interests",
                style: profileCardHeading,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 4),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(
                          "https://www.rmprosolution.com/assets/UI-face-2.jpg"),
                      radius: 15,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jack posted a video",
                            style: profileCardHeading,
                          ),
                          IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Purus nisi diam sem ut pellentwsque.",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "2 Hours ago",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTkSeofnQwyOtYtG5w9Yy1CGUJ7rKxhOQl-w&usqp=CAU"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 4),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(
                          "https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2021/3/27/eybpyvzyatgki6rdee3y/max-verstappen-pole"),
                      radius: 15,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Albert Edlman Posted",
                            style: profileCardHeading,
                          ),
                          IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Awesome performance by max oncce...",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "2 Hours ago",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                          "https://www.f1-fansite.com/wp-content/uploads/2021/03/SI202103120103_news.jpg"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 4),
                    child: CircleAvatar(
                      foregroundImage: NetworkImage(
                          "https://www.rmprosolution.com/assets/UI-face-4.jpg"),
                      radius: 15,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jenny Posted",
                            style: profileCardHeading,
                          ),
                          IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Awesome performance by max oncce...",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "2 Hours ago",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        "https://www.formula1.com/content/dam/fom-website/sutton/2021/Bahrain/Friday/1309258171.jpg.transform/9col/image.jpg",
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsRedBullView extends StatelessWidget {
  NewsRedBullView({
    Key? key,
  }) : super(key: key);

  List<Widget> carouselItems = [
    Stack(
      children: [
        Image.network(
          "https://www.insidesport.in/wp-content/uploads/2022/02/Red-Bull-Racing-RB16B-Honda-158716.jpeg?w=1024",
          fit: BoxFit.fill,
          width: 1000,
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                      "data:image/png;base64,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"),
                ),
              ),
              Expanded(
                child: Text(
                  "Red Bull announces joining Cohora!",
                  style: profileCardHeading.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(right: 16, bottom: 48),
          child: Text(
            "2 hours ago",
            style: profileCardText.copyWith(color: Colors.white),
          ),
        ),
      ],
    ),
    Stack(
      children: [
        Image.network(
          "https://www.cnet.com/a/img/resize/ef1829011755d518079850916b71d009947cb15c/2021/07/15/56433bea-88e8-42bc-b9a7-4c158b3225b5/image.jpg?auto=webp&width=940",
          fit: BoxFit.fill,
          width: 1000,
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                      "data:image/png;base64,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"),
                ),
              ),
              Expanded(
                child: Text(
                  "Red Bull announces joining Cohora!",
                  style: profileCardHeading.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(right: 16, bottom: 48),
          child: Text(
            "2 hours ago",
            style: profileCardText.copyWith(color: Colors.white),
          ),
        ),
      ],
    ),
    Stack(
      children: [
        Image.network(
          "https://img.dtcn.com/image/themanual/formula-1-racecar-800x800.jpg",
          fit: BoxFit.fill,
          width: 1000,
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                      "data:image/png;base64,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"),
                ),
              ),
              Expanded(
                child: Text(
                  "Red Bull announces joining Cohora!",
                  style: profileCardHeading.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(right: 16, bottom: 48),
          child: Text(
            "2 hours ago",
            style: profileCardText.copyWith(color: Colors.white),
          ),
        ),
      ],
    ),
    Stack(
      children: [
        Image.network(
          "https://assets-prd.formulae.cloud/-/media/images/discover/cars-and-technology/fe-test-mallorca2018-2526.jpg?modified=20190206093553",
          fit: BoxFit.fill,
          width: 1000,
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                      "data:image/png;base64,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"),
                ),
              ),
              Expanded(
                child: Text(
                  "Red Bull announces joining Cohora!",
                  style: profileCardHeading.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(right: 16, bottom: 48),
          child: Text(
            "2 hours ago",
            style: profileCardText.copyWith(color: Colors.white),
          ),
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CarouselSlider(
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    Get.find<LeftColumnController>().setNewsActiveIndex(index);
                  },
                  autoPlay: true,
                  viewportFraction: 1,
                  enlargeCenterPage: true),
              items: carouselItems,
            ),
          ),
          GetBuilder<LeftColumnController>(
            id: getXIds.newsCarouselIndicatorId,
            builder: (controller) {
              return DotsIndicator(
                dotsCount: carouselItems.length,
                position: controller.newsCarouselActivateIndex,
              );
            },
          )
        ],
      ),
    );
  }
}

class QuizzesCarouselView extends StatelessWidget {
  QuizzesCarouselView({
    Key? key,
  }) : super(key: key);

  List<Widget> quizzesCarouselItems = [
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        "https://www.insidesport.in/wp-content/uploads/2022/02/Red-Bull-Racing-RB16B-Honda-158716.jpeg?w=1024",
        fit: BoxFit.fill,
        width: 1000,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        "https://www.cnet.com/a/img/resize/ef1829011755d518079850916b71d009947cb15c/2021/07/15/56433bea-88e8-42bc-b9a7-4c158b3225b5/image.jpg?auto=webp&width=940",
        fit: BoxFit.fill,
        width: 1000,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        "https://img.dtcn.com/image/themanual/formula-1-racecar-800x800.jpg",
        fit: BoxFit.fill,
        width: 1000,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        "https://assets-prd.formulae.cloud/-/media/images/discover/cars-and-technology/fe-test-mallorca2018-2526.jpg?modified=20190206093553",
        fit: BoxFit.fill,
        width: 1000,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  Get.find<LeftColumnController>().setQuizActiveIndex(index);
                },
                autoPlay: true,
                viewportFraction: 1,
                enlargeCenterPage: true),
            items: quizzesCarouselItems,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 4),
            child: Text(
              "Quizzes/Survey",
              // textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
                child: GetBuilder<LeftColumnController>(
              id: getXIds.quizzesCarouselIndicatorId,
              builder: (controller) {
                return DotsIndicator(
                  dotsCount: quizzesCarouselItems.length,
                  position: controller.quizzesCarouselActiveIndex,
                );
              },
            )),
          )
        ],
      ),
    );
  }
}

class ProfileCardView extends StatelessWidget {
  const ProfileCardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text("Welcome to the community", style: profileCardHeading),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Row(
              children: [
                Text(
                  "Total people online : ",
                  style: profileCardText,
                ),
                Text(
                  "1200",
                  style: TextStyle(color: Colors.blue[300]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Row(
              children: [
                CircleAvatar(
                  foregroundImage: NetworkImage(
                      "https://www.mecgale.com/wp-content/uploads/2017/08/dummy-profile.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Shivam Verma",
                    style: profileCardHeading,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue[50]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.people,
                          color: Colors.blue[200],
                        ),
                      ),
                      Text(
                        'Friends',
                        style: profileCardText,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("150", style: profileCardText),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              foregroundImage: NetworkImage(
                                  "https://www.rmprosolution.com/assets/UI-face-3.jpg"),
                              radius: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CircleAvatar(
                                foregroundImage: NetworkImage(
                                    "https://www.rmprosolution.com/assets/UI-face-4.jpg"),
                                radius: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: CircleAvatar(
                                foregroundImage: NetworkImage(
                                    "https://www.rmprosolution.com/assets/UI-face-2.jpg"),
                                radius: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue[50]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.blue[200],
                        ),
                      ),
                      Text(
                        'Followers',
                        style: profileCardText,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("59", style: profileCardText),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              foregroundImage: NetworkImage(
                                  "https://www.rmprosolution.com/assets/UI-face-1.jpg"),
                              radius: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CircleAvatar(
                                foregroundImage: NetworkImage(
                                    "https://www.rmprosolution.com/assets/UI-face-2.jpg"),
                                radius: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: CircleAvatar(
                                foregroundImage: NetworkImage(
                                    "https://www.rmprosolution.com/assets/UI-face-3.jpg"),
                                radius: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue[50]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          MdiIcons.message,
                          color: Colors.blue[200],
                        ),
                      ),
                      Text(
                        'Messages',
                        style: profileCardText,
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                        child: Text("11",
                            style:
                                profileCardText.copyWith(color: Colors.white)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue[50]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.currency_exchange_rounded,
                          color: Colors.blue[200],
                        ),
                      ),
                      Text(
                        'Loyalty Coins',
                        style: profileCardText,
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        child: Text("400",
                            style:
                                profileCardText.copyWith(color: Colors.white)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
