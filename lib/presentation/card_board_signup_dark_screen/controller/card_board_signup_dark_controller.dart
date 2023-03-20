import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/presentation/card_board_signup_dark_screen/models/card_board_signup_dark_model.dart';
import 'package:flutter/material.dart';

class CardBoardSignupDarkController extends GetxController {
  TextEditingController firstnameController = TextEditingController();

  TextEditingController lastnameController = TextEditingController();

  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<CardBoardSignupDarkModel> cardBoardSignupDarkModelObj =
      CardBoardSignupDarkModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    firstnameController.dispose();
    lastnameController.dispose();
    emailaddressController.dispose();
    passwordController.dispose();
  }
}
