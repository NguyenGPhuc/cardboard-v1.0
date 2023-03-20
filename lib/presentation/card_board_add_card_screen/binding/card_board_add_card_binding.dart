import '../controller/card_board_add_card_controller.dart';
import 'package:get/get.dart';

class CardBoardAddCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardAddCardController());
  }
}
