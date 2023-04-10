import 'controller/card_board_add_card_controller.dart';
import 'package:cardboard/core/app_export.dart';
import 'package:cardboard/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CardBoardAddCardScreen extends GetWidget<CardBoardAddCardController> {
  // Create a list of data for the scrollable list
  final List<Map<String, dynamic>> _listData = [    {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    },    {      'image': ImageConstant.imgAddcardnut1,      'text': 'Card 2',    },    {      'image': ImageConstant.imgAddcardnut1,      'text': 'Card 3',    },    {      'image': ImageConstant.imgAddcardnut1,      'text': 'Card 4',    },    {      'image': ImageConstant.imgAddcardnut1,      'text': 'Card 5',    },  {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    }, {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    }, {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    }, {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    }, {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    }, {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    }, {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    }, {      'image':ImageConstant.imgAddcardnut1 ,      'text': 'Card 1',    }];

  @override
  Widget build(BuildContext context) {
    Set<int> _selectedIndices = {};
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
                    padding: getPadding(left: 31, top: 62, right: 31),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_add_a_new_card".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProDisplayLight24,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          margin: getMargin(left: 7, top: 9, right: 6),
                          variant: TextFormFieldVariant.OutlineGray700,
                          fontStyle: TextFormFieldFontStyle.SFProDisplayLight17,
                          textInputAction: TextInputAction.done,
                        ),
                        // Create a scrollable list with photos and text that are clickable

                        StatefulBuilder(
                          builder: (BuildContext context, StateSetter setState) {
                            return SizedBox(
                              width: getHorizontalSize(300),
                              height: getVerticalSize(700),
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: _listData.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (_selectedIndices.contains(index)) {
                                          _selectedIndices.remove(index);
                                        } else {
                                          _selectedIndices.add(index);
                                        }
                                      }); // <-- added missing parenthesis here
                                      // Store the data in a separate array when the item is clicked
                                      final Map<String, dynamic> data = _listData[index];
                                      controller.addCardData(data);
                                      print("selected element is $_selectedIndices");
                                      print("Clicking the element $index");
                                    },
                                    child: Container(
                                      width: getHorizontalSize(3000),
                                      margin: getMargin(right: 1, left: 1, top: 5, bottom: 7),
                                      decoration: BoxDecoration(
                                        color: _selectedIndices.contains(index) ? Colors.blueGrey[50] : null,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: _listData[index]['image'],
                                            height: getVerticalSize(100),
                                            width: getHorizontalSize(100),
                                            margin: EdgeInsets.only(bottom: 4),
                                          ),
                                          Text(
                                            _listData[index]['text'],
                                            style: AppStyle.txtSFProDisplayLight24.copyWith(
                                              color: ColorConstant.greenA100,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
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
