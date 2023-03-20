import '../controller/card_board_main_controller.dart';
import 'package:get/get.dart';

class CardBoardMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardMainController());
  }
}
