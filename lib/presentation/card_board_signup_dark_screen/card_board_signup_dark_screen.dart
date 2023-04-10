import 'package:firebase_database/firebase_database.dart';

import 'controller/card_board_signup_dark_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/core/utils/validation_functions.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// Import firebase class
import '../../firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

final storage = FirebaseStorage.instance;
final database = FirebaseDatabase.instance;
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
      //////
      uploadImage();
      uploadImage1();
      uploadImage2();
      // final cardImageFile = File("/Users/divyanshsingh/Desktop/GIthub/cardboard-v1.0/assets/images/appleCard@3x.png");
      // if (await cardImageFile.exists()) {
      //   print("File exists on local machine.");
      // } else {
      //   print("File does not exist on local machine.");
      // }
      // final String cardImageName = DateTime.now().millisecondsSinceEpoch.toString();
      // // Upload the card image file to Firebase Storage
      // final Reference cardImageRef = storage.ref().child(cardImageName);
      // final TaskSnapshot cardImageUploadTask = await cardImageRef.putFile(cardImageFile);
      // final String cardImageDownloadUrl = await cardImageUploadTask.ref.getDownloadURL();
      //
      // FirebaseService.cardsRef.push().
      // set({
      //   'cardName': "Apple Card" ?? '',
      //   'bankName': "Goldman Sachs",
      //   'rewardCategory': "CashBack",
      //   'dining': 2,
      //   'gas': 2,
      //   'eCommerce': 2,
      //   'groceries': 2,
      //   'supermarket': 2,
      //   'streaming': 2,
      //   'travel': 1,
      //   'entertainment': 1,
      //   'lifestyle': 1,
      //   'other':1,
      //   'cardImageURL': cardImageDownloadUrl
      // });
      // FirebaseService.cardsRef.push().
      // set({
      //   'cardName': "Bank of America Premium Rewards",
      //   'bankName': "Bank of America",
      //   'rewardCategory': "Points",
      //   'dining': 2,
      //   'gas': 1,
      //   'eCommerce': 1,
      //   'groceries': 1,
      //   'supermarket': 1,
      //   'streaming':1,
      //   'travel': 2,
      //   'entertainment': 1,
      //   'lifestyle': 1,
      //   'other':1
      // });


    } catch (e) {
      handleError(e, context);
    }
    Get.toNamed(AppRoutes.cardBoardAddCardScreen);

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
    Get.toNamed(AppRoutes.cardBoardAddCardScreen);
  }

  Future<Uint8List> loadImage(String path) async {
    var data = await rootBundle.load(path);
    return data.buffer.asUint8List();
  }
  void uploadImage() async {
    // Load the card image as a Uint8List
    final Uint8List cardImageBytes = await loadImage('assets/images/appleCard@3x.png');

    // Create a temporary file to hold the image
    final Directory tempDir = await getTemporaryDirectory();
    final String tempPath = '${tempDir.path}/cardImage.png';
    final File tempFile = File(tempPath);
    tempFile.writeAsBytesSync(cardImageBytes);

    // Create a unique filename for the card image
    final String cardImageName = "Apple Card";

    // Upload the card image file to Firebase Storage
    final Reference cardImageRef = storage.ref().child(cardImageName);
    final TaskSnapshot cardImageUploadTask = await cardImageRef.putFile(tempFile);
    final String cardImageDownloadUrl = await cardImageUploadTask.ref.getDownloadURL();

    // Store the download URL for the card image in the Firebase Realtime Database
    FirebaseService.cardsRef.push().set({
      'cardName': "Apple Card",
      'bankName': "Goldman Sachs",
      'rewardCategory': "CashBack",
      'dining': 2,
      'gas': 2,
      'eCommerce': 2,
      'groceries': 2,
      'supermarket': 2,
      'streaming': 2,
      'travel': 1,
      'entertainment': 1,
      'lifestyle': 1,
      'other': 1,
      'cardImageURL': cardImageDownloadUrl,
    });
  }
  void uploadImage1() async {
    // Repeat the above steps to upload and store a different image for another table
    final Uint8List cardImageBytes1 = await loadImage('assets/images/boaPremiumRewards@3x.png');

    // Create a temporary file to hold the image
    final Directory tempDir1 = await getTemporaryDirectory();
    final String tempPath1 = '${tempDir1.path}/cardImage.png';
    final File tempFile1 = File(tempPath1);
    tempFile1.writeAsBytesSync(cardImageBytes1);

    // Create a unique filename for the card image
    final String cardImageName1 = "Bank of America Premium Rewards";

    // Upload the card image file to Firebase Storage
    final Reference cardImageRef1 = storage.ref().child(cardImageName1);
    final TaskSnapshot cardImageUploadTask1 = await cardImageRef1.putFile(tempFile1);
    final String cardImageDownloadUrl1 = await cardImageUploadTask1.ref.getDownloadURL();

    // Generate a unique key for the card
    final newCardRef = FirebaseService.cardsRef.push();
    // Store the download URL for the card image in the Firebase Realtime Database
    newCardRef.set({
      'cardName': "Bank of America Premium Rewards",
      'bankName': "Bank of America",
      'rewardCategory': "Points",
      'dining': 2,
      'gas': 1,
      'eCommerce': 1,
      'groceries': 1,
      'supermarket': 1,
      'streaming':1,
      'travel': 2,
      'entertainment': 1,
      'lifestyle': 1,
      'other':1,
      'cardImageURL': cardImageDownloadUrl1,
    });
    // Repeat for other tables if needed

    // Delete the temporary file
    tempFile1.deleteSync();
  }
  void uploadImage2() async {
    // Repeat the above steps to upload and store a different image for another table
    final Uint8List cardImageBytes2 = await loadImage('assets/images/amexPlatinum@3x.png');

    // Create a temporary file to hold the image
    final Directory tempDir2 = await getTemporaryDirectory();
    final String tempPath2 = '${tempDir2.path}/cardImage.png';
    final File tempFile2 = File(tempPath2);
    tempFile2.writeAsBytesSync(cardImageBytes2);

    // Create a unique filename for the card image
    final String cardImageName2 = "Amex Platinum";

    // Upload the card image file to Firebase Storage
    final Reference cardImageRef2 = storage.ref().child(cardImageName2);
    final TaskSnapshot cardImageUploadTask2 = await cardImageRef2.putFile(tempFile2);
    final String cardImageDownloadUrl2 = await cardImageUploadTask2.ref.getDownloadURL();

    // Generate a unique key for the card
    final newCardRef = FirebaseService.cardsRef.push();
    // Store the download URL for the card image in the Firebase Realtime Database
    newCardRef.set({
      'cardName': "Amex Platinum Card",
      'bankName': "American Express",
      'rewardCategory': "Points",
      'dining': 1,
      'gas': 1,
      'eCommerce': 1,
      'groceries': 1,
      'supermarket': 1,
      'streaming':1,
      'travel': 1,
      'entertainment': 1,
      'lifestyle': 1,
      'other':1,
      'cardImageURL': cardImageDownloadUrl2,
    });
    // Repeat for other tables if needed

    // Delete the temporary file
    tempFile2.deleteSync();
  }

// void uploadImage() async {
  //   // Initialize the card image file
  //   final cardImageFile = File('assets/images/appleCard@3x.png');
  //
  //   // Create a unique filename for the card image
  //   final String cardImageName = DateTime.now().millisecondsSinceEpoch.toString();
  //
  //   // Upload the card image file to Firebase Storage
  //   final Reference cardImageRef = storage.ref().child(cardImageName);
  //   final TaskSnapshot cardImageUploadTask = await cardImageRef.putFile(cardImageFile);
  //   final String cardImageDownloadUrl = await cardImageUploadTask.ref.getDownloadURL();
  //
  //   // Store the download URL for the card image in the Firebase Realtime Database
  //   FirebaseService.cardsRef.push().set({
  //     'cardName': "Apple Card",
  //     'bankName': "Goldman Sachs",
  //     'rewardCategory': "CashBack",
  //     'dining': 2,
  //     'gas': 2,
  //     'eCommerce': 2,
  //     'groceries': 2,
  //     'supermarket': 2,
  //     'streaming': 2,
  //     'travel': 1,
  //     'entertainment': 1,
  //     'lifestyle': 1,
  //     'other': 1,
  //     'cardImageURL': cardImageDownloadUrl,
  //   });
  //
  //   // Repeat the above steps to upload and store a different image for another table
  //
  //   // Repeat for other tables if needed
  // }
}
