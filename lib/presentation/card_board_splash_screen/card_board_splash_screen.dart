import 'controller/card_board_splash_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:flutter/material.dart';

class CardBoardSplashScreen extends GetWidget<CardBoardSplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 43, bottom: 43),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 236),
                          child: Text("lbl_cardboard".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtDarkerGrotesqueBold48)),
                      CustomImageView(
                          imagePath: ImageConstant.imgAppicon10241,
                          height: getSize(141),
                          width: getSize(141),
                          radius: BorderRadius.circular(getHorizontalSize(20)),
                          margin: getMargin(top: 10)),
                      Spacer(),
                      Text("lbl_v_1_0_0_beta".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProDisplayBold20),
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("msg_cardboard_2023".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFProDisplayRegular13))
                    ]))));
  }
}
