import 'package:furious_fox_assignment/getXIds.dart';
import 'package:get/get.dart';

class RightColumnController extends GetxController {
  double hottestCarouselActiveIndex = 0;
  double prizeCarouselActiveIndex = 0;

  void setHottestCarouselIndicator(int index) {
    hottestCarouselActiveIndex = index.toDouble();
    update([hottestCarouselIndicatorId]);
  }

  void setPrizeCarouselIndicator(int index) {
    prizeCarouselActiveIndex = index.toDouble();
    update([prizeCarouselIndicatorId]);
  }
}
