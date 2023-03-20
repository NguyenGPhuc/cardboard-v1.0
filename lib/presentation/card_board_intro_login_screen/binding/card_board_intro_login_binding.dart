import '../controller/card_board_intro_login_controller.dart';
import 'package:get/get.dart';

class CardBoardIntroLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardIntroLoginController());
  }
}
