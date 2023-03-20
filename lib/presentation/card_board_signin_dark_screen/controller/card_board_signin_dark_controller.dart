import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_signin_dark_screen/models/card_board_signin_dark_model.dart';
import 'package:flutter/material.dart';

class CardBoardSigninDarkController extends GetxController {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<CardBoardSigninDarkModel> cardBoardSigninDarkModelObj =
      CardBoardSigninDarkModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailaddressController.dispose();
    passwordController.dispose();
  }
}
