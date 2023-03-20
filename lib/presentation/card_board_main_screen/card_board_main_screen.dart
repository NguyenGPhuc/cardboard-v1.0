import 'controller/card_board_main_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CardBoardMainScreen extends GetWidget<CardBoardMainController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 17, top: 57, right: 17, bottom: 57),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Container(
                              height: getVerticalSize(236),
                              width: getHorizontalSize(358),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIntroboxpng2,
                                        height: getVerticalSize(236),
                                        width: getHorizontalSize(358),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(20)),
                                        alignment: Alignment.center,
                                        onTap: () {
                                          onTapImgIntroBoxPngTwo();
                                        }),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 6, right: 15),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_cardboard".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtDarkerGrotesqueBold43),
                                                  Container(
                                                      height:
                                                          getVerticalSize(60),
                                                      width: getHorizontalSize(
                                                          172),
                                                      margin:
                                                          getMargin(right: 5),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Text(
                                                                    "lbl".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtDarkerGrotesqueRegular22)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            168),
                                                                    child: Text(
                                                                        "msg_see_your_profile"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .right,
                                                                        style: AppStyle
                                                                            .txtDarkerGrotesqueRegular17)))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 1, right: 8),
                                                      child: Text(
                                                          "lbl_you_earned".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtDarkerGrotesqueExtraBold19))
                                                ])))
                                  ]))),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 16, bottom: 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Container(
                              height: getVerticalSize(291),
                              width: getHorizontalSize(358),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgQuestionboxbg2,
                                    height: getVerticalSize(291),
                                    width: getHorizontalSize(358),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 37, right: 37),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_save_everytime".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProDisplayBold36),
                                              Text("msg_choose_the_category".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtSFProDisplayLight15),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .categoryController,
                                                  hintText: "lbl_category".tr,
                                                  margin: getMargin(top: 15),
                                                  variant: TextFormFieldVariant
                                                      .OutlineGray600,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .SFProDisplayLight15),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .purchasevalueController,
                                                  hintText:
                                                      "lbl_purchase_value".tr,
                                                  margin: getMargin(top: 7),
                                                  variant: TextFormFieldVariant
                                                      .OutlineGray600,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .SFProDisplayLight15,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgResultsbut1,
                                                  height: getVerticalSize(48),
                                                  width: getHorizontalSize(185),
                                                  margin: getMargin(top: 13))
                                            ])))
                              ])))
                    ]))));
  }

  onTapImgIntroBoxPngTwo() {
    Get.toNamed(AppRoutes.cardBoardAccountSettingsScreen);
  }
}
