import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_result_screen/models/card_board_result_model.dart';

class CardBoardResultController extends GetxController {
  Rx<CardBoardResultModel> cardBoardResultModelObj = CardBoardResultModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
