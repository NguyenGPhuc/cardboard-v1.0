import '../controller/card_board_manage_card_controller.dart';
import 'package:get/get.dart';

class CardBoardManageCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardManageCardController());
  }
}
