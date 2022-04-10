import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:furious_fox_assignment/controller/left_column_controller.dart';
import 'package:furious_fox_assignment/controller/right_column_controller.dart';
import 'package:furious_fox_assignment/getXIds.dart';
import 'package:furious_fox_assignment/views/styles.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RightColumn extends StatelessWidget {
  RightColumnController controller = Get.put(RightColumnController());
  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: true,
      children: [
        HottestProductsView(),
        SizedBox(height: 10),
        TheInfluencersView(),
        SizedBox(height: 10),
        PrizeView(),
        SizedBox(height: 10),
        ChatRoomsView(),
        SizedBox(height: 10),
      ],
    );
  }
}

class ChatRoomsView extends StatelessWidget {
  const ChatRoomsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Chat Rooms", style: profileCardHeading),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(Icons.launch_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.arrow_downward_outlined),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.orange[100],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        margin: EdgeInsets.only(top: 26),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Text(
                              "24",
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Icon(
                                Icons.people_outline,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Special Room",
                            style: profileCardHeading,
                          ),
                          Text(
                            "Talk with Brand",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green[100],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        margin: EdgeInsets.only(top: 26),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Text(
                              "24",
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Icon(
                                Icons.people_outline,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Chat Room 1",
                                style: profileCardHeading,
                              ),
                              Text(
                                "12:36 PM",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Show here last messages.....",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green[100],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        margin: EdgeInsets.only(top: 26),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Text(
                              "24",
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Icon(
                                Icons.people_outline,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Chat Room 2",
                                style: profileCardHeading,
                              ),
                              Text(
                                "12:36 PM Yesterday",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Show here last messages.....",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green[100],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        margin: EdgeInsets.only(top: 26),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Text(
                              "24",
                              style: TextStyle(fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Icon(
                                Icons.people_outline,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Chat Room 2",
                                style: profileCardHeading,
                              ),
                              Text(
                                "10:40 AM 05 Jan",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Show here last messages.....",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HottestProductsView extends StatelessWidget {
  List<Widget> hottestCarouselItems = [
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVrOtux5GmvZ9SAbA2RIRk76Jrlz2VS29Wtw&usqp=CAU",
                    fit: BoxFit.fill,
                    height: 1000,
                  ),
                ),
                Container(
                  child: Text(
                    "Promotion Boost!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  ),
                  margin: EdgeInsets.only(bottom: 4, right: 8),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue[300],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              "Red Bull Cap",
              style: TextStyle(fontSize: 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "€ 19.90",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/762881/01/mod01/fnd/IND/fmt/png/Red-Bull-Racing-Team-Men's-T-Shirt",
                    fit: BoxFit.fill,
                    height: 1000,
                  ),
                ),
                Container(
                  child: Text(
                    "- 40 %",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  ),
                  margin: EdgeInsets.only(bottom: 4, right: 8),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              "Red Bull T-shirt",
              style: TextStyle(fontSize: 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "€ 24.90",
                  style: TextStyle(fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "€ 39.90",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 8,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVrOtux5GmvZ9SAbA2RIRk76Jrlz2VS29Wtw&usqp=CAU",
                    fit: BoxFit.fill,
                    height: 1000,
                  ),
                ),
                Container(
                  child: Text(
                    "Cohora Exclusive!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  ),
                  margin: EdgeInsets.only(bottom: 4, right: 8),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              "Red Bull Cap",
              style: TextStyle(fontSize: 11),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "€ 19.90",
                  style: TextStyle(fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "€ 39.90",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 8,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hottest products",
              style: profileCardHeading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: CarouselSlider(
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    Get.find<RightColumnController>()
                        .setHottestCarouselIndicator(index);
                  },
                  autoPlay: true,
                  viewportFraction: 0.33,
                  aspectRatio: 2.3),
              items: hottestCarouselItems,
            ),
          ),
          GetBuilder<RightColumnController>(
            builder: ((controller) {
              return Center(
                child: DotsIndicator(
                  dotsCount: hottestCarouselItems.length,
                  position: controller.hottestCarouselActiveIndex,
                ),
              );
            }),
            id: hottestCarouselIndicatorId,
          )
        ],
      ),
    );
  }
}

class PrizeView extends StatelessWidget {
  PrizeView({
    Key? key,
  }) : super(key: key);

  List<Widget> prizeCarouselItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              "https://img.etimg.com/thumb/msid-70082944,width-650,imgsize-570231,,resizemode-4,quality-100/the-robocar-is-powered-by-nvidias-drive-px2-ai-car-computing-platform-and-uses-a-number-of-technologies-to-drive-itself.jpg",
              fit: BoxFit.fill,
              // width: 200,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "current contests",
                  style: profileCardHeading.copyWith(color: Colors.orange),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "First Prize",
                    style: profileCardHeading.copyWith(color: Colors.orange),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      primary: Colors.orange),
                  onPressed: () {},
                  child: Text(
                    "Prize",
                    style:
                        profileCardHeading.copyWith(color: Colors.orange[100]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              "https://img.etimg.com/thumb/msid-70082944,width-650,imgsize-570231,,resizemode-4,quality-100/the-robocar-is-powered-by-nvidias-drive-px2-ai-car-computing-platform-and-uses-a-number-of-technologies-to-drive-itself.jpg",
              fit: BoxFit.fill,
              // width: 200,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "current contests",
                  style: profileCardHeading.copyWith(color: Colors.orange),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "First Prize",
                    style: profileCardHeading.copyWith(color: Colors.orange),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      primary: Colors.orange),
                  onPressed: () {},
                  child: Text(
                    "Prize",
                    style:
                        profileCardHeading.copyWith(color: Colors.orange[100]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[100],
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (index, reason) {
                  Get.find<RightColumnController>()
                      .setPrizeCarouselIndicator(index);
                },
                aspectRatio: 2.8,
                viewportFraction: 1,
                autoPlay: true),
            items: prizeCarouselItems,
          ),
          Center(
            child: GetBuilder<RightColumnController>(
              id: prizeCarouselIndicatorId,
              builder: (controller) {
                return DotsIndicator(
                  dotsCount: prizeCarouselItems.length,
                  position: controller.prizeCarouselActiveIndex,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class TheInfluencersView extends StatelessWidget {
  const TheInfluencersView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "Follow The Influncers",
                style: profileCardHeading,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      foregroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/de/23/cd/de23cd2727acdcc58d59400717760838.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Red Bull", style: profileCardHeading),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        MdiIcons.crown,
                        color: Colors.yellow,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Follow"))),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      foregroundImage: NetworkImage(
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKgAAAEsCAMAAABgwwj8AAAAeFBMVEUCAAMAAAD///8cHBwICAiJiYkYGBh6enqtra0aGhp9fX0UFBQQEBBhYWGMjIwEBATz8/Pk5OTt7e3CwsLW1tanp6fMzMw4ODgmJiaSkpJwcHBbW1tQUFBqampISEi1tbWcnJxKSkorKyvm5uafn59BQUEwMDDa2tqKpbfBAAAD1ElEQVR4nO3abVOjMBiF4Q3QWgotCPbdtru66v//h5uQUGG3O+Oas+Po3NcXrWXklORJHtBv3wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4u80kQVI2gagRVI6gaQdUIqkZQNYKqEVSNoGoEVSOoGkHVCKpGUDWCqhFU7b8HPcxfpRG/JzboefbqvL92QPJqE3Gi2KDJ0OrKAZ8m6GF3rrs3H2fLbZG9+0SxQWftbR+zbvdZce2YB/fuzpgsTz8uqD393F+x5Lsp0+m1A0zt3kydjwxamIkP+mLyLuj+ZshW+txe7e00TYvs/TkVVzQzjU96k5WVMU+jadvYIx6TZGZirqYmqBUu6V334vsoqJ2aB/vlvkjLuHNoFvwwSw/u+8WyL6+63c0fStO6j5DGLPaOJujKJ2v9q/sw6idX6NON/RTzLL26HvwDTdDNaEXf96Pu6tzs7KWdxixMnmivb322n92LdUg9TXM7MV+6UspjzyAKGka7dhWT9aXVzUtXSk/RpaTrnu58urnplk1nknXpQilVsSdQBQ3z8tZcRj7t5uU2kZSSsB999PEW5sGvVWs/L5d2PhTxpSQMukxCvjDycz/yt5pSUnb4/QrlR95t7pkvsh+CUlIG7Rf9Oqz9XYPSdnMgdldydEG3oz1+X7rLmKlKSXpz1w6bpoepW5HsrtT4ORBNGPR+EDSMvKyUtLfLd4OR72pe0+B5yqD715HPc1dAmgbPkz6AuNznnY0rILf032hKSRx01wc9djXvdiWj2JUcadA0dPqNjVd1Dd7KXL0xfQfts6fVcOTdKrARlZI6aLixqws33mdRg+dpg4YWKlmaypSJsJTEQQ99Mbm21JZSk6pKSRx0dllIj91apSslbdDs8RK07UpJtSs5yqCLwWb/fP5tV4qtKWXQYft0/mNX+rleP0f8cmHQvB51pEkzeuyQuhY6gjBofyPaBx2X0tnd+EWMv7xxbg79hR09dnh2a9bHPnG+6Os9TNXxrmR/OIlarHRBw0PSfd/pD0qpctMispHSBfX9fVPl/lFJPXzGvPFP8WPuSWRBS38d7S1SWTydTic7Qy8DvXUFVuZRq78q6FN44vTDhDRZeYl1aHzrF9VIxQc97G+Wq5dQ6fXieFxYR2fRfTfxH+FUxDVS0UHT35b5v1jH/lkkOuj8TTndXVRcZxoddDGxlgOTP7gfRv3VThLUyaoqs6rKdF/Dy5E8tjMVBM3SN4ls9QVBq7eJPAv/U6JGUDWCqhFUjaBqBFX7PEEBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAL+cXXedj1nmw5RYAAAAASUVORK5CYII="),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text("Louis Vuitton", style: profileCardHeading),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        MdiIcons.crown,
                        color: Colors.yellow,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Follow"))),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      foregroundImage: NetworkImage(
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQgAAAC/CAMAAAA1kLK0AAAAsVBMVEX////oAAD///3jAAD8///eAADnAAP9//vhd3fy1NT209X/9PT/+/rfOzz3///pfX3wAAD/+//fT07kW1nlWl3ri4niFhP43t7nh4jkS0b76OTjZWTiCQ3fNDPolJTrqKjhKSvyxr7wvLnhHx7/9OvsoqLrvb3y5OXrxMTmbXD20MfupJ7x1c3kdW7gg37nkYjssLTmf4brhX3jq6Tgn5jwvcXTBg7qcWrgX1XtqbLzv7EST1dxAAAOgklEQVR4nO1diXqbvBLVriS2CeB9wXsWx0nT9t/v+z/YnZEwiw12FtxQw/naxEGAmcNoNJJGI0Jq1KhRo0aNGjVq1KhRo0aNGjUuCOy3uOUZIRgjwvwguj/rjv2VzAOX8m53GQj5gAfSJ/BJb97e3D024HaaafGVgr0fwgEaSGM2BkHoCVxFFwl2k3u2kkH3SeA54vfhgjnEc8TNRkpKuaKKc5UDKIiJYExcZ50JN1CGDDn/swFa9vsQITwhHn3zchNvOJMJOCEiAtQeNOLgDGr+QwHegw8avwkRxjKI0VgmxT9SMZIaQci1zDsL6TDaIWdAGZxddjoEvtit5O4p05BBhGDXJy0KsNEawdfo5ldK+QaAQqzbMlUn3kwEewsRAPmdEOcrhXwLmBjNj1eGTxIB1oLL13J7FBof70liQ0EtFcp8OKRFRSrzEY1wsc3VYI1YWdkAf+da8lhuQwPn+06S8aNcdUDEm2xEqBUv2EJ/pazHwLQzktSNhQFZZft10W8cnnvD5Yc1AiDdK+KVlghNGitunKQQvDWDZt88r0gBXKeIqw8QAUZool4F875O1lwYh4+1rT0IXcHWvekfMFObUwCNkJ8gAg2M4n+V0pcAIjzwHywP5oec6iPn33zCWIb4O6PGfT2Y44m+DDkAFuhqdOR9sUwi3mwswy/ZlLH/BdoufEVtWwBq3xqBIThy9qc1Artsi18i2vsgiLOU1Ha6od0YNsyoRB6KIYIGJfQjhCat6CH5/Fi9IIUQYb5nCV9bMjIYeYx7jrLvHO8TFWAjDFrkSP37GjDSibX2jhxrMEhhGkHVc9kUQpNRrBAtfcxQIgoj4p+yqYQg251kit8cFO6jKCKobJRMIwjZOZUu9zNKWboJKYwI/lguhSBkHTpTIMl9ugR6FqarkTxWFBHc/SbKpRJisRuBoL1Dz1fv287CbAQNnHIRQaZUhe71S9xkCNEUpD/dtILOFfZDNQsH4wurGkqWbexysxuI4jOxI4JpIZ6Hkht/U6nbhiBhWXEaIftfIe0RDHdEyGcRvSRPdyV1TbcACrj8n/COEfF+hwp6Xt+/QNhjmO+eDXQ1qrVizM1clxmhwOGqbWgzi9MINfsCYY+gIXfDECvr4jD89cKjqSpoTnD8eWkNSIFEdL9M5kxERID7b8CIFkup9p9bNgo1lnD/268ROA+xRoRE4ITXnO4P5e/ELs5G/A5ELPkhEVwaL6MCGrGrGuBDtHloHpLgxsoX5keUkAi1RwQTq6wXaB+8OIeq/EToRtYUv6IdLKwQEYI9HAqFIQ6mvChj+RsQQViGRuBM6NAUVkcjCPMmmY++MYUVIsITw0OpuOJbLKwSEYL8mRU+JEdYWCEbAVJlNRvKjuNVSCMwum7KE0EjOKpLOX8yQ2sVIgLkFc3ATcRKmJ/fbB+9QkQw4njOWiYEA+2QbVL0UF3piUCJPdEPIjuhXMpfmkRUTSNs5KluDqR9XtCI1dIO7ZNqEWEgNBndDSW4D6v2ch2P4VWOCMIcBwpHoxGGwEXD25Ujwo7UmpkuzZiIw4Yr5FBZmEjCkApCmhWuGjl4JxFhGHNGhHe1iMDpoRxVqRYR9sTMiP/LJCLHWHI+ma+4zFaWiyTiUCNADeTtwvTc+zOfm4VuFSRiQl1+NXJsKwy/Hlt0f/VkNYiAWrHA4AIWlhLyc79+VIMIV2LcqjAOKcZawL+prBwR2Gu/JtoTzC5QEfALlGJAVdKfqAARivNXsh+4qoUOpJtwKi6fCPjQ0w5z0ot0wGIueFIlLpMIkSZierC6Ey0GCXi1qgaXI7t+MnmZB1Zim1pwfvlEqFXOtdeqUhrB7dzgIYSWlTKWeDwzplaQahGBESWZRGhPVqtquJvs1S+6WS0iKG9lL0AQD1RWiwg7b36IPy6/+RQpY6lmNoI3dRmgnRyqukwi9lzsAIyESNkJXCvW58lRu8snAoeiloQ1968jY1defNVI+REudMNHjk5VDe2QGeeqUhphgvqDdboJ1WRhUlddOhGpUWyTniYY4Zx6mHPC0WQpVWpc5kKJyJjX4EvwqZlNQkIaVxhlkUI1iOAYdBXMrD/B+q+4onJvCUg1iMCmw4X/rfFm01lxjLmh1dQIKLWpe+wPblL6VZCIN6AmoiaiJqJCRFxwDFUeao0IURMR4pKJoBERb8hsUdy6T1ViIt6Q9aUaK4ErTsTORsx/bdXg3XKlHWLz3biRbLwhuWJBRGCqkm25iCCtnUbw6zeoREEOlTIjN+XCLtkOV7M3ZIYqrmqULtnOdKcQdPxhjfgQESXL0SYeQxuhaM/TJzPpFddqtEjJElE15G50WS4IaZ4wmEV1uvhu/WSJ4IeCcerboK9jKE4jFiVrNJjYhpP13JVPjuMdf08FpnEsGRHECRN7Yjy9f3LThyKIMMO4/5zKpfrLoROpXvnsV2Q4RSdCPZ1dsHcCasJjLERejEfi9CKqhqRBybJZEtNeBvHLCk5U3ULyYlOXz5ySpbxF0cQyXgdOhx5mqyMkp3ErRCO4G7Bm6WwEwndDr4pT7jcECCY8nclEQVXj8dfJ9i70Obe7jOAU5bwvBNM5W84V4lDxdumcqR2mYeC8yV6JySu9HMeqkFaDl86H2IGxdiicbdv8pzx/oggi5PJEXvqvg2CNnhuN2aHy+ssmydqIkIknucua/BEiMF1Nt7y7+oHA4F+qeGGJUlxu7p4ajf3NcgR5yth65s02YkKp+6JJefe8hBd/k9SIUFYpZW8Pqx79jEZQiYsYSksEI2bDsihEGCM7uNEQtb99ZcTWx3ZlomNUP1LGXZkQzLgO/R41cS6RpJmSfIyIcDc09YKxdqSMW/BEYMJZ+9LNlj+TkvdphItVbSZI6ToZB/D2tql6BxEnjSVaYiqDPtQJp6zVIoYGr7rfkeoMREDb7Mqtgx5rs+z7XDLHZpZ5bHFrCWyG8DwkiYBaf7gncIozMD7f1iRcHv11Mr4Ti7bkloj8/T+hKy1PbIVr91A2eSPkanpqoKN8wNX965kvTRU5Ukc4jzdHJuQm60wbZClXPx4xD32ZW4osQIeLEYesb+6++cNe7gbqkss/d5eAq/jwd9Y5gb+ZLvsaV/iJ7G59iQEa4cRNfdPzmjmIJWNOU2SegoXCpLM6OU9Qo0aNGjVq1KhRo0aNGjVq1KhxsRB2OouQ3ImFcJeATw8ksb3fecE3WUM1jUaTmCniswxnse3gx72ZYGL9q8FrYtBsdjuId910vNcfgxs7Y/98+y0qYGLxrTsY4L9ud/DtJg5+WuJBBByOQswZcx6+TQdr+BpPkO/w1ckgobvuFE7/MX1CgXXipcALGHUDKSf+sin2MtQUBTG3KZFstFTPiV+EzxNbZIumVGqyNo+2VTQucF45DkWb/0puYyKm8QxIvOgA5OtL6vpCYBLLjaI/kkGsQ0VdxZVUsttMhScJZyoVNRNtwTPJi1P5JAJ40IBoYPov6iYX6nSo3ZgOoQnuz8X/NX/MVFxAnGk8Jk3pLH7EqckLgFv0KBkTIdgIROJTkNMTV5J2k3XAN3kkuIlKXzteYmj7VnKbMlpR+eycZ4BzjvkbfqKGLjifJx4LiGhHf7BmD6chpvj5jscFTPzR8v3hitKV7/utZYIIoGsZ4iE6KjAky+xeBF/44qpB8u368MLbnc4Q5wADTXQ0/zfDTAv+djZYuZzK9XlmSEEjXG5ynfyl6J5GRPIK1pzghI68AQFmSYYsxrtD8eXTxJrF+KgGInAirLeGen9ltryNC/1wL+AHzM71KsJARkYaoA/yO27K3RyDZtyeZ1PxgKqJdNFMPHI6T9iuPY2YwHkUBBC5RKTblCnnlgiR3G8eiLArH9qek0EEvzNXaKCkp02eZCZA6bjLtwRqBHN0i7pn2lR8rvhsonhLi3vUiCNEyBko9ZiIAyJYqBFpIsCkzgy29/FRQ0Rvaze9u83RCCZGXKkbe2+Bd1dzox0O1F+wO89nMRLQajwupHKvyP0JjZCjGbzN7aFGZBNBo9U//8ZHDRGSvGAty60axGETyr+HqdSFgOMbjFYhnnbA1oYlRWOOGdwH8NCLx+MaoXifbKBpu14mmhNbmK0R0rYmMkmbIYI39Jyqv/Wt2ieC3kVPRZfWjoJGwPGNo21FWcPl/52LiKWAqsd7dyeJcBrQxgRd7nb2bpKpEbT9eH9/v7xfXMdHrUY08Cfd/KT0UCPAOmoykmbtFEI0yRhqLhgOLYCNGyDi6VxVAzxLXKAywQW/R4iQfUc8S+M8/Zu6RbZG8GhdM0u1GtIs0LlDB43zQ2OJplVg1VmH1zJxp1x6TzwM+SWdqKRoIBHwC4PwJc0jghkb0YeHvjNRdW+pGtw2nyLVgdkRocUY/ZeMqgE86FvpQpNjN0oE/cAldvLZTBW/SpqXSPmzCAwRgvzELFlJItpJjRB64gIR0IR1wNWVaSIE2vX9FnXqqn9GDxZefJudRohG4IIfOSAJp2BIqQ9dlqsVSLtax0SYPQb47fPDsoWhff3zeJYBNxpBdAts/DzR6eooHmsE2WmEs+7Bizwkgnb2/L0p9Buk5FxyGbvY2HviaCPAxcY4GqgaifVRPrfxm7iU7hn8yog/3UEnDPepAbfuD9E8BxPY6TLPiXHGdBV/hUh5lqQJLXtfYJTIE7hfe69fgPZ09vy9rozT+S4iicDFhu5HA7uzDnga/GcybGoYxtK4cjyC8tgPMx6li6HaLpDqnKX3ycbDIbou4KzMhsNxwvW/GrbiiDDRbA+DUCe3w1Y6vYMgg+FwP/P3djj0hwZ+K1qKAu5RHw40NPiVHnsZDv8TCUW6giJAe4qOPEn0S+HPhS+hXyp/jM4WUsJ2IzLmBST7+snAJm3O04Kx+JK40ObzTb+oRJR98p74GZpBZva+S0eYRp+tU86iOoOfQCevr/vMDlR8TNIaNWrUqFGjRo0aNWrUqFGjRo0avw7/B90028ZrscznAAAAAElFTkSuQmCC"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Nintendo", style: profileCardHeading),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        MdiIcons.crown,
                        color: Colors.yellow,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Follow"))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextButton(onPressed: () {}, child: Text("Show more")),
            )
          ],
        ),
      ),
    );
  }
}
