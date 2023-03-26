import 'controller/card_board_signup_dark_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/core/utils/validation_functions.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// Import firebase class
import '../../firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

                          // Text box for first name
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
                              },
                              onSavedCallback: (value) {
                                // Save user first name into firebase
                                FirebaseService.usersRef.push().set({'first_name': value ?? ''});

                                // Dummy data for card table creation
                                // FirebaseService.cardsRef.push().set({'card_name': value ?? ''});

                              }),

                          // Text box for last name
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
                              },
                              onSavedCallback: (value) {
                                // Save user last name into firebase
                                FirebaseService.usersRef.push().set({'last_name': value ?? ''});
                              }),

                          // Text box for email address
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
                              },
                              onSavedCallback: (value) {
                                // Save user email address into firebase
                                FirebaseService.usersRef.push().set({'email_address': value ?? ''});
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
                              onSavedCallback: (value) {
                                // Save user password into firebase
                                FirebaseService.usersRef.push().set({'password': value ?? ''});
                              },
                              isObscureText: true),

                          // Handles when user click on sign up button
                          CustomImageView(
                              svgPath: ImageConstant.imgSignupbutton,
                              height: getVerticalSize(54),
                              width: getHorizontalSize(167),
                              margin: getMargin(top: 22),
                              onTap: () {
                                onTapImgSignupbutton(context);
                              }),

                          // Go back to previous screen
                          CustomImageView(
                              svgPath: ImageConstant.imgBackbutton,
                              height: getVerticalSize(31),
                              width: getHorizontalSize(108),
                              margin: getMargin(top: 9),
                              onTap: () {
                                onTapImgBackbutton();
                              }),


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

                        ])))));
  }

  // Save user data to Firebase database, display success message in a dialog, and clear the text fields
  void onTapImgSignupbutton(BuildContext context) async{
    // Initilize Firebase authentication service
    final Firebase_auth = FirebaseAuth.instance;

    // Create user through Firebase authentication service.
    try {
      UserCredential userCredential = await Firebase_auth.createUserWithEmailAndPassword(
          email: controller.emailaddressController.text,
          password: controller.passwordController.text
      );
      // Save user data to Firebase database
      await FirebaseService.usersRef.push().set({
        'first_name': controller.firstnameController.text,
        'last_name': controller.lastnameController.text,
        'email': controller.emailaddressController.text,
        'password': controller.passwordController.text,
      });

      // Display success message in a dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Success"),
            content: Text("User data saved to database."),
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

      // Clear the text fields
      controller.firstnameController.clear();
      controller.lastnameController.clear();
      controller.emailaddressController.clear();
      controller.passwordController.clear();

    } catch (e) {
      handleError(e, context);
    }
  }

  // Display error message in a dialog if user data fails to save to Firebase database
  void handleError(dynamic error, BuildContext context) {
    print("Error occurred: $error");

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("An error occurred while trying to save to database."),
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

  onTapImgBackbutton() {
    Get.toNamed(AppRoutes.cardBoardIntroLoginScreen);
  }
}
