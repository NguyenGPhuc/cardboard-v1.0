import '../controller/card_board_result_controller.dart';
import 'package:get/get.dart';

class CardBoardResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardResultController());
  }
}
