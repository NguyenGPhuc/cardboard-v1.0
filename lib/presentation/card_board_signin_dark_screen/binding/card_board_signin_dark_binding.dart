import '../controller/card_board_signin_dark_controller.dart';
import 'package:get/get.dart';

class CardBoardSigninDarkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardSigninDarkController());
  }
}
