import 'controller/card_board_result_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:flutter/material.dart';

class CardBoardResultScreen extends GetWidget<CardBoardResultController> {
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
                      left: 24,
                      top: 69,
                      right: 24,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgResultsbox1,
                          height: getVerticalSize(
                            68,
                          ),
                          width: getHorizontalSize(
                            344,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogtransbox1,
                          height: getVerticalSize(
                            65,
                          ),
                          width: getHorizontalSize(
                            336,
                          ),
                          margin: getMargin(
                            top: 618,
                            bottom: 378,
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
