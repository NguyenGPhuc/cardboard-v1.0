import '../controller/card_board_result_final_controller.dart';
import 'package:get/get.dart';

class CardBoardResultFinalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardResultFinalController());
  }
}
