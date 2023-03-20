import 'controller/card_board_intro_login_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:flutter/material.dart';

class CardBoardIntroLoginScreen
    extends GetWidget<CardBoardIntroLoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("lbl_cardboard".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtDarkerGrotesqueBold48Bluegray100)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 46, top: 45),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgIntrocard1,
                                        height: getVerticalSize(336),
                                        width: getHorizontalSize(298)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgIntrocard2,
                                        height: getVerticalSize(336),
                                        width: getHorizontalSize(298),
                                        margin: getMargin(left: 15)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgIntrocard3,
                                        height: getVerticalSize(336),
                                        width: getHorizontalSize(298),
                                        margin: getMargin(left: 14)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgIntrocard4,
                                        height: getVerticalSize(336),
                                        width: getHorizontalSize(298),
                                        margin: getMargin(left: 15))
                                  ])))),
                      CustomImageView(
                          svgPath: ImageConstant.imgSignupbutton,
                          height: getVerticalSize(54),
                          width: getHorizontalSize(167),
                          margin: getMargin(top: 48),
                          onTap: () {
                            onTapImgSignupbutton();
                          }),
                      CustomImageView(
                          svgPath: ImageConstant.imgSigninbutton,
                          height: getVerticalSize(31),
                          width: getHorizontalSize(108),
                          margin: getMargin(top: 9),
                          onTap: () {
                            onTapImgSigninbutton();
                          })
                    ]))));
  }

  onTapImgSignupbutton() {
    Get.toNamed(AppRoutes.cardBoardSignupDarkScreen);
  }

  onTapImgSigninbutton() {
    Get.toNamed(AppRoutes.cardBoardSigninDarkScreen);
  }
}
