import 'package:flutter/cupertino.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/colors_app.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Inter';

  TextStyle get textTitlePrimary => TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: primaryFont,
      color: ColorsApp.instance.whiteText);

  TextStyle get textTitleSecondary => TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: primaryFont,
      color: ColorsApp.instance.whiteText);

  TextStyle get textSubTitleSecondary => TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont,
      color: ColorsApp.instance.greyText);

  TextStyle get textTitleButton => TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont,
      color: ColorsApp.instance.whiteText);

  TextStyle get textTitleForm => TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont,
      color: ColorsApp.instance.whiteText);

  TextStyle get textTitleMenu => TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont,
      color: ColorsApp.instance.whiteText);

  TextStyle get labelForm => TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont,
      color: ColorsApp.instance.greyInputText);

  TextStyle get textRich => TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont,
      color: ColorsApp.instance.primary);

  TextStyle get textRichLeft => TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont,
      color: ColorsApp.instance.whiteText);
  
  TextStyle get textTitleCheckBox => TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: primaryFont,
      color: ColorsApp.instance.whiteText);
}
