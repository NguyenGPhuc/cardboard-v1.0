import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_splash_screen/models/card_board_splash_model.dart';

class CardBoardSplashController extends GetxController {
  Rx<CardBoardSplashModel> cardBoardSplashModelObj = CardBoardSplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.cardBoardIntroLoginScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
