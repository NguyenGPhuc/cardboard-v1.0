import 'controller/card_board_account_settings_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CardBoardAccountSettingsScreen
    extends GetWidget<CardBoardAccountSettingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      top: 57,
                      right: 17,
                      bottom: 57,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              151,
                            ),
                            width: getHorizontalSize(
                              358,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsboxaccountbg,
                                  height: getVerticalSize(
                                    151,
                                  ),
                                  width: getHorizontalSize(
                                    358,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      20,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 23,
                                      top: 13,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_account".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtDarkerGrotesqueBold32,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 7,
                                          ),
                                          child: Text(
                                            "lbl_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtSFProDisplayBold17,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                          ),
                                          child: Text(
                                            "lbl_email".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayRegular17,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 2,
                                          ),
                                          child: Text(
                                            "lbl_1234567890".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayRegular16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPrioritycard1,
                          height: getVerticalSize(
                            74,
                          ),
                          width: getHorizontalSize(
                            358,
                          ),
                          margin: getMargin(
                            top: 16,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgManagecards,
                          height: getVerticalSize(
                            134,
                          ),
                          width: getHorizontalSize(
                            358,
                          ),
                          margin: getMargin(
                            top: 16,
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(
                            top: 16,
                            bottom: 42,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder26,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              375,
                            ),
                            width: getHorizontalSize(
                              358,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder26,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRewardsboxbg,
                                  height: getVerticalSize(
                                    375,
                                  ),
                                  width: getHorizontalSize(
                                    358,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      26,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      right: 14,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 4,
                                            right: 5,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_your_earnings".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtDarkerGrotesqueBold32GreenA100,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSeeallrewards1,
                                                height: getVerticalSize(
                                                  34,
                                                ),
                                                width: getHorizontalSize(
                                                  131,
                                                ),
                                                margin: getMargin(
                                                  top: 2,
                                                  bottom: 7,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.cashcontentController,
                                          hintText: "lbl_cashback".tr,
                                          margin: getMargin(
                                            top: 15,
                                          ),
                                          variant: TextFormFieldVariant
                                              .FillBluegray900,
                                          shape: TextFormFieldShape
                                              .RoundedBorder13,
                                          padding:
                                              TextFormFieldPadding.PaddingT32,
                                          fontStyle: TextFormFieldFontStyle
                                              .SFProDisplayBold20,
                                          prefix: Container(
                                            margin: getMargin(
                                              left: 13,
                                              top: 10,
                                              right: 5,
                                              bottom: 30,
                                            ),
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgReply,
                                            ),
                                          ),
                                          prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              88,
                                            ),
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: controller
                                              .pointscontentController,
                                          hintText: "lbl_points".tr,
                                          margin: getMargin(
                                            top: 8,
                                          ),
                                          variant: TextFormFieldVariant
                                              .FillGray80002,
                                          shape: TextFormFieldShape
                                              .RoundedBorder13,
                                          padding:
                                              TextFormFieldPadding.PaddingT32,
                                          fontStyle: TextFormFieldFontStyle
                                              .SFProDisplayBold20Yellow600,
                                          prefix: Container(
                                            margin: getMargin(
                                              left: 13,
                                              top: 10,
                                              right: 6,
                                              bottom: 30,
                                            ),
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgStar,
                                            ),
                                          ),
                                          prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              88,
                                            ),
                                          ),
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.milescontentController,
                                          hintText: "lbl_miles".tr,
                                          margin: getMargin(
                                            top: 8,
                                          ),
                                          variant: TextFormFieldVariant
                                              .FillBluegray800,
                                          shape: TextFormFieldShape
                                              .RoundedBorder13,
                                          padding:
                                              TextFormFieldPadding.PaddingT32,
                                          fontStyle: TextFormFieldFontStyle
                                              .SFProDisplayBold20Cyan400,
                                          textInputAction: TextInputAction.done,
                                          prefix: Container(
                                            margin: getMargin(
                                              left: 16,
                                              top: 12,
                                              right: 7,
                                              bottom: 30,
                                            ),
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgSend,
                                            ),
                                          ),
                                          prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(
                                              88,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
