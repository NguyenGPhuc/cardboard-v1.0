import 'controller/card_board_manage_card_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:flutter/material.dart';

class CardBoardManageCardScreen
    extends GetWidget<CardBoardManageCardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: getPadding(
                      left: 17,
                      top: 64,
                      right: 17,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAddcardbutton,
                          height: getVerticalSize(
                            97,
                          ),
                          width: getHorizontalSize(
                            358,
                          ),
                          margin: getMargin(
                            left: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 23,
                            top: 26,
                            bottom: 637,
                          ),
                          child: Text(
                            "lbl_your_cards".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtDarkerGrotesqueBold32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
