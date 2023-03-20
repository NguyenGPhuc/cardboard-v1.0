import 'controller/card_board_signup_dark_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/core/utils/validation_functions.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CardBoardSignupDarkScreen
    extends GetWidget<CardBoardSignupDarkController> {
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
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.firstnameController,
                              hintText: "lbl_first_name".tr,
                              margin: getMargin(top: 24),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.lastnameController,
                              hintText: "lbl_last_name".tr,
                              margin: getMargin(top: 8),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailaddressController,
                              hintText: "lbl_email_address".tr,
                              margin: getMargin(top: 8),
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
                              margin: getMargin(top: 45)),
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
                          Padding(
                              padding: getPadding(top: 81),
                              child: Text("lbl_cardboard".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtDarkerGrotesqueBold55)),
                          CustomImageView(
                              svgPath: ImageConstant.imgSignupbutton,
                              height: getVerticalSize(54),
                              width: getHorizontalSize(167),
                              margin: getMargin(top: 22),
                              onTap: () {
                                onTapImgSignupbutton();
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

  onTapImgSignupbutton() {
    Get.toNamed(AppRoutes.cardBoardAddCardScreen);
  }

  onTapImgBackbutton() {
    Get.toNamed(AppRoutes.cardBoardIntroLoginScreen);
  }
}
