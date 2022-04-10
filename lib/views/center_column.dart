import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:furious_fox_assignment/controller/center_Column_controller.dart';
import 'package:furious_fox_assignment/views/styles.dart';
import 'package:furious_fox_assignment/views/video_dialog.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Models/fetch_posts_response_model.dart';

class CenterColumn extends StatelessWidget {
  CenterColumnController controller = Get.put(CenterColumnController());
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(MdiIcons.tuneVariant),
                ),
                TopButtons("Photos", "POST_IMAGES"),
                TopButtons("Videos", "POST_VIDEOS"),
                TopButtons("Contests", "CONTEST"),
                TopButtons("Posts", "POST"),
                TopButtons("Articles", "POST_TEXT"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: ElevatedButton.icon(
              icon: Icon(
                MdiIcons.plusCircle,
                color: Colors.blue,
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 28),
                  elevation: 1,
                  primary: Color.fromARGB(255, 230, 241, 247)),
              label: Text(
                "Add post",
                style: TextStyle(color: Colors.blue, fontSize: 24),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: PagedListView<int, Item>(
                pagingController: controller.postsController,
                builderDelegate: PagedChildBuilderDelegate(
                  itemBuilder: (context, item, index) {
                    return PostView(post: item);
                  },
                )),
          ),
        ],
      ),
    );
  }
}

class PostView extends StatelessWidget {
  Item post;
  PostView({
    required this.post,
    Key? key,
  }) : super(key: key);

  CenterColumnController controller = Get.find<CenterColumnController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                CircleAvatar(
                    foregroundImage: NetworkImage(post.userInfo.photoUrl)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                          "${post.userInfo.name} ${post.userInfo.surname}",
                          style: profileCardHeading),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        controller.getTimeDiff(post.createdAt),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(MdiIcons.share),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(MdiIcons.dotsHorizontal),
                ),
              ],
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(post.text.length > 200
                      ? post.text.substring(0, 200) + "..."
                      : post.text),
                  // "Red Bull announces joining Cohora! Here's Photo of Max in 2021 Bahrain opening race. Find out more about first race of the season on our web..."),
                  post.text.length > 200
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            "Read more",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      : Container(),
                  post.assets.length > 0
                      ? Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: getAssetWidget(),
                        )
                      : Container(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child:
                            Icon(Icons.thumb_up_outlined, color: Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(post.likes.length.toString()),
                      ),
                      Icon(
                        MdiIcons.dotsHorizontal,
                        color: Colors.blue[200],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(post.likes.length.toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "All reactions",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Spacer(),
                      Text(post.postComments.length.toString()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.sms_outlined,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                        // indent: 8,
                        // endIndent: 8,
                        ),
                  ),
                  post.postComments.length > 0
                      ? Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 8),
                          child: Row(
                            children: [
                              CircleAvatar(
                                foregroundImage: NetworkImage(
                                    post.postComments[0].userInfo.photoUrl),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${post.postComments[0].userInfo.name} ${post.postComments[0].userInfo.surname}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      post.postComments[0].text,
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Text(
                                  post.postComments[0].likes.length.toString()),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(
                                  MdiIcons.emoticonExcitedOutline,
                                  color: Colors.purple,
                                ),
                              )
                            ],
                          ),
                        )
                      : Container()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getAssetWidget() {
    if (controller.filter == "POST_IMAGES") {
      return CachedNetworkImage(
        height: 400,
        fit: BoxFit.fill,
        alignment: Alignment.center,
        imageUrl: post.assets[0].url,
        placeholder: (context, text) {
          return Center(child: CircularProgressIndicator());
        },
      );
    }
    if (controller.filter == "POST_VIDEOS") {
      return Stack(
        alignment: Alignment.center,
        children: [
          CachedNetworkImage(
            height: 400,
            fit: BoxFit.fill,
            alignment: Alignment.center,
            imageUrl: post.assets[0].thumbnails[0].url,
            errorWidget: (context, text, error) {
              return Container(color: Colors.black);
            },
            placeholder: (context, text) {
              return Center(child: CircularProgressIndicator());
            },
          ),
          IconButton(
            icon: Icon(
              Icons.play_circle,
              color: Colors.white,
              size: 48,
            ),
            onPressed: () {
              print(post.assets[0].url);
              Get.dialog(VideoDialog(
                src: post.assets[0].url,
              ));
            },
          )
        ],
      );
    }
    return Container();
  }
}

class TopButtons extends StatelessWidget {
  String data;
  String filterText;
  TopButtons(this.data, this.filterText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 1,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32))),
        onPressed: (() {
          Get.find<CenterColumnController>().setFilter(filterText);
        }),
        child: Text(
          data,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
