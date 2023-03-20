import 'controller/card_board_result_final_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:flutter/material.dart';

class CardBoardResultFinalScreen
    extends GetWidget<CardBoardResultFinalController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 32, right: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("msg_congratulations".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFProDisplayBold40)),
                      Container(
                          height: getVerticalSize(205),
                          width: getHorizontalSize(329),
                          margin: getMargin(top: 61),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray400,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(16)),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorConstant.black9006b,
                                    spreadRadius: getHorizontalSize(2),
                                    blurRadius: getHorizontalSize(2),
                                    offset: Offset(0, 0))
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgNewtransbox1,
                          height: getVerticalSize(61),
                          width: getHorizontalSize(276),
                          margin: getMargin(top: 61),
                          onTap: () {
                            onTapImgNewTransBoxOne();
                          }),
                      CustomImageView(
                          imagePath: ImageConstant.imgYourcardsbut1,
                          height: getVerticalSize(50),
                          width: getHorizontalSize(183),
                          margin: getMargin(top: 10),
                          onTap: () {
                            onTapImgYourCardsbutOne();
                          }),
                      Container(
                          width: getHorizontalSize(118),
                          margin: getMargin(top: 29),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_you_earned3".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(24),
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.13))),
                                TextSpan(
                                    text: "\n".tr,
                                    style: TextStyle(
                                        color: ColorConstant.greenA700,
                                        fontSize: getFontSize(64),
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w700))
                              ]),
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("lbl3".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFProDisplayBold40GreenA700
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(3.2))))
                    ]))));
  }

  onTapImgNewTransBoxOne() {
    Get.toNamed(AppRoutes.cardBoardMainScreen);
  }

  onTapImgYourCardsbutOne() {
    Get.toNamed(AppRoutes.cardBoardManageCardScreen);
  }
}
