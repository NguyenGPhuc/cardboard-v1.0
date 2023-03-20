import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_intro_login_screen/models/card_board_intro_login_model.dart';

class CardBoardIntroLoginController extends GetxController {
  Rx<CardBoardIntroLoginModel> cardBoardIntroLoginModelObj =
      CardBoardIntroLoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
