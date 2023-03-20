import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_manage_card_screen/models/card_board_manage_card_model.dart';

class CardBoardManageCardController extends GetxController {
  Rx<CardBoardManageCardModel> cardBoardManageCardModelObj =
      CardBoardManageCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
