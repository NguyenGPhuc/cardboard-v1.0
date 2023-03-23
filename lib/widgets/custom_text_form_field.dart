import 'package:cardboard/core/app_export.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {

  // Changes on signup screen
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function(String)? onEditingComplete;
  final Function(String)? onSavedCallback;


  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator,

      // Callbacks function when the text field's content changes.
      this.onChanged,
      // Callback function when the user submit the text field content
      this.onSubmitted,
      // Callback function when the user finish editing the text field content
      this.onEditingComplete,
      // Callback function when the user save the text field content
      this.onSavedCallback,
      });

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  // Returns user saved texfield information
  _buildTextFormFieldWidget() {
    String getFieldValue() {
      return controller?.text ?? '';
    }

    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
        onChanged: onChanged,
        onSaved: onSavedCallback != null ? (value) => onSavedCallback!(value!) : null,
        onEditingComplete: onEditingComplete != null ? () => onEditingComplete!(getFieldValue()) : null,
        onFieldSubmitted: onSubmitted,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.SFProDisplayLight17:
        return TextStyle(
          color: ColorConstant.blueGray400,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w300,
          height: getVerticalSize(
            1.24,
          ),
        );
      case TextFormFieldFontStyle.SFProDisplayLight15:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w300,
          height: getVerticalSize(
            1.20,
          ),
        );
      case TextFormFieldFontStyle.SFProDisplayBold20:
        return TextStyle(
          color: ColorConstant.greenA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.20,
          ),
        );
      case TextFormFieldFontStyle.SFProDisplayBold20Yellow600:
        return TextStyle(
          color: ColorConstant.yellow600,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.20,
          ),
        );
      case TextFormFieldFontStyle.SFProDisplayBold20Cyan400:
        return TextStyle(
          color: ColorConstant.cyan400,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.20,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray700,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.23,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray700,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineGray600:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray600,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillBluegray900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray80002:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillBluegray800:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray700,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray700:
        return ColorConstant.gray90001;
      case TextFormFieldVariant.FillBluegray900:
        return ColorConstant.blueGray900;
      case TextFormFieldVariant.FillGray80002:
        return ColorConstant.gray80002;
      case TextFormFieldVariant.FillBluegray800:
        return ColorConstant.blueGray800;
      default:
        return ColorConstant.gray90002;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray700:
        return true;
      case TextFormFieldVariant.OutlineGray600:
        return false;
      case TextFormFieldVariant.FillBluegray900:
        return true;
      case TextFormFieldVariant.FillGray80002:
        return true;
      case TextFormFieldVariant.FillBluegray800:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT32:
        return getPadding(
          top: 32,
          right: 32,
          bottom: 32,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }
}

enum TextFormFieldShape {
  CircleBorder23,
  RoundedBorder13,
}

enum TextFormFieldPadding {
  PaddingAll13,
  PaddingT32,
}

enum TextFormFieldVariant {
  None,
  OutlineGray700_1,
  OutlineGray700,
  OutlineGray600,
  FillBluegray900,
  FillGray80002,
  FillBluegray800,
}

enum TextFormFieldFontStyle {
  SFProDisplayMedium13,
  SFProDisplayLight17,
  SFProDisplayLight15,
  SFProDisplayBold20,
  SFProDisplayBold20Yellow600,
  SFProDisplayBold20Cyan400,
}
