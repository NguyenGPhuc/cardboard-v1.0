import 'controller/card_board_signin_dark_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/core/utils/validation_functions.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CardBoardSigninDarkScreen
    extends GetWidget<CardBoardSigninDarkController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray900,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 48, right: 48),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: getPadding(top: 61),
                              child: Text("lbl_cardboard".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDarkerGrotesqueBold55)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailaddressController,
                              hintText: "lbl_email_address".tr,
                              margin: getMargin(top: 59),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 8),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          CustomImageView(
                              imagePath: ImageConstant.imgApplesignin1,
                              height: getVerticalSize(54),
                              width: getHorizontalSize(231),
                              margin: getMargin(top: 56)),
                          CustomImageView(
                              imagePath: ImageConstant.imgGooglesignin1,
                              height: getVerticalSize(54),
                              width: getHorizontalSize(231),
                              margin: getMargin(top: 7)),
                          CustomImageView(
                              imagePath: ImageConstant.imgTwittersignin,
                              height: getVerticalSize(54),
                              width: getHorizontalSize(231),
                              margin: getMargin(top: 7)),
                          CustomImageView(
                              svgPath: ImageConstant.imgLoginbutton,
                              height: getVerticalSize(54),
                              width: getHorizontalSize(167),
                              margin: getMargin(top: 22),
                              onTap: () {
                                onTapImgLoginbutton();
                              }),
                          CustomImageView(
                              svgPath: ImageConstant.imgBackbutton,
                              height: getVerticalSize(31),
                              width: getHorizontalSize(108),
                              margin: getMargin(top: 9),
                              onTap: () {
                                onTapImgBackbutton();
                              })
                        ])))));
  }

  onTapImgLoginbutton() {
    Get.toNamed(AppRoutes.cardBoardMainScreen);
  }

  onTapImgBackbutton() {
    Get.toNamed(AppRoutes.cardBoardIntroLoginScreen);
  }
}
