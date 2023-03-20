import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_account_settings_screen/models/card_board_account_settings_model.dart';
import 'package:flutter/material.dart';

class CardBoardAccountSettingsController extends GetxController {
  TextEditingController cashcontentController = TextEditingController();

  TextEditingController pointscontentController = TextEditingController();

  TextEditingController milescontentController = TextEditingController();

  Rx<CardBoardAccountSettingsModel> cardBoardAccountSettingsModelObj =
      CardBoardAccountSettingsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    cashcontentController.dispose();
    pointscontentController.dispose();
    milescontentController.dispose();
  }
}
