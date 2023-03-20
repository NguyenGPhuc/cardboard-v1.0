import '../controller/card_board_splash_controller.dart';
import 'package:get/get.dart';

class CardBoardSplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardSplashController());
  }
}
