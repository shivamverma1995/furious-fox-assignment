import 'package:flutter/material.dart';
import 'package:furious_fox_assignment/Models/fetch_posts_response_model.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:furious_fox_assignment/data_provider.dart' as dp;

class CenterColumnController extends GetxController {
  PagingController<int, Item> postsController =
      PagingController(firstPageKey: 1);
  String filter = "POST_IMAGES";
  DateTime currentDateTime = DateTime.now();
  @override
  void onInit() {
    super.onInit();
    postsController.addPageRequestListener((pageKey) {
      fetchPosts(pageKey, filter);
    });
  }

  void fetchPosts(int pageKey, String filter) {
    dp.fetchPostsData(pageKey, filter).then((value) {
      print(value.items.length);
      List<Item> items = value.items;
      if (items.length < 20) {
        postsController.appendLastPage(items);
      } else {
        postsController.appendPage(items, pageKey + 1);
      }
    });
  }

  String getTimeDiff(String time2) {
    DateTime dateTime2 = DateTime.parse(time2);
    Duration diff = currentDateTime.difference(dateTime2);
    if (diff.inDays > 0) {
      return "${diff.inDays} days ago";
    }
    if (diff.inHours > 0) {
      return "${diff.inHours} hours ago";
    }
    if (diff.inMinutes > 0) {
      return "${diff.inMinutes} minutes ago";
    }
    return "${diff.inSeconds} seconds ago";
  }

  void setFilter(String newFilter) {
    filter = newFilter;
    postsController.refresh();
  }
}
