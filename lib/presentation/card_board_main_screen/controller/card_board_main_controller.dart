import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_main_screen/models/card_board_main_model.dart';
import 'package:flutter/material.dart';

class CardBoardMainController extends GetxController {
  TextEditingController categoryController = TextEditingController();

  TextEditingController purchasevalueController = TextEditingController();

  Rx<CardBoardMainModel> cardBoardMainModelObj = CardBoardMainModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    categoryController.dispose();
    purchasevalueController.dispose();
  }
}
