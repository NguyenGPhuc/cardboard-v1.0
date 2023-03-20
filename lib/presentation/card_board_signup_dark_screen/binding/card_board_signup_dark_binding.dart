import '../controller/card_board_signup_dark_controller.dart';
import 'package:get/get.dart';

class CardBoardSignupDarkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardSignupDarkController());
  }
}
