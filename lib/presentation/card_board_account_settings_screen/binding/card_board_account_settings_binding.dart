import '../controller/card_board_account_settings_controller.dart';
import 'package:get/get.dart';

class CardBoardAccountSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardBoardAccountSettingsController());
  }
}
