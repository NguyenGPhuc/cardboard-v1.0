import 'controller/card_board_signin_dark_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/core/utils/validation_functions.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
                                onTapImgLoginbutton(context);
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

  onTapImgLoginbutton(context) async {
    // Call the signInWithEmailAndPassword function to authenticate the user
    final email = controller.emailaddressController.text;
    final password = controller.passwordController.text;
    try {
      final userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      if (user != null) {
        // If the authentication was successful, do something with the user object
        print('User ${user.uid} signed in successfully');
        Get.toNamed(AppRoutes.cardBoardMainScreen);

      } else {
        // If the authentication failed, show an error message
        print('Invalid email or password');

        // Display log in error message in a dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Failed to log in"),
              content: Text("Invalid email or password"),
              actions: <Widget>[
                TextButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );

        // Clear text field
        controller.emailaddressController.clear();
        controller.passwordController.clear();
      }
    } on FirebaseAuthException catch (e) {
      // Handle any errors that occurred during authentication
      print('An error occurred during authentication: $e');

      // Clear  text field
      controller.emailaddressController.clear();
      controller.passwordController.clear();

      // Display log in error message in a dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error validating credentials"),
            content: Text("An error occurred during authentication: $e"),
            actions: <Widget>[
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  onTapImgBackbutton() {
    Get.toNamed(AppRoutes.cardBoardIntroLoginScreen);
  }
}
//hello
