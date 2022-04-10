import 'package:get/get.dart';
import 'package:furious_fox_assignment/getXIds.dart' as getXIds;

class LeftColumnController extends GetxController {
  double quizzesCarouselActiveIndex = 0;
  double newsCarouselActivateIndex = 0;

  void setQuizActiveIndex(int index) {
    quizzesCarouselActiveIndex = index.toDouble();
    update([getXIds.quizzesCarouselIndicatorId]);
  }

  void setNewsActiveIndex(int index) {
    newsCarouselActivateIndex = index.toDouble();
    update([getXIds.newsCarouselIndicatorId]);
  }
}
