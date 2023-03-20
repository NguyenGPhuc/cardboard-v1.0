import 'controller/card_board_add_card_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CardBoardAddCardScreen extends GetWidget<CardBoardAddCardController> {
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
                                  padding:
                                      getPadding(left: 31, top: 62, right: 31),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_add_a_new_card".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayLight24),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.searchController,
                                            hintText: "lbl_search".tr,
                                            margin: getMargin(
                                                left: 7, top: 9, right: 6),
                                            variant: TextFormFieldVariant
                                                .OutlineGray700,
                                            fontStyle: TextFormFieldFontStyle
                                                .SFProDisplayLight17,
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgAddcardnut1,
                                            height: getVerticalSize(67),
                                            width: getHorizontalSize(331),
                                            margin: getMargin(
                                                top: 604, bottom: 1207),
                                            onTap: () {
                                              onTapImgAddCardNutOne();
                                            })
                                      ]))))
                    ]))));
  }

  onTapImgAddCardNutOne() {
    Get.toNamed(AppRoutes.cardBoardMainScreen);
  }
}
