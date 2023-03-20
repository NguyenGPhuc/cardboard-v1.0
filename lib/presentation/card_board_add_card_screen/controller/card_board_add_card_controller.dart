import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_add_card_screen/models/card_board_add_card_model.dart';
import 'package:flutter/material.dart';

class CardBoardAddCardController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<CardBoardAddCardModel> cardBoardAddCardModelObj =
      CardBoardAddCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
