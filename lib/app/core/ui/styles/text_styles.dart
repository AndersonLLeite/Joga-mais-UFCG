import 'package:flutter/cupertino.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Inter';

  TextStyle get textTitlePrimary =>
      TextStyle(fontWeight: FontWeight.w700, fontFamily: primaryFont);

  TextStyle get textTitleSecondary =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: primaryFont);

  TextStyle get textSubTitleSecondary =>
      TextStyle(fontWeight: FontWeight.w400, fontFamily: primaryFont);
  
  TextStyle get textTitleButton =>
      TextStyle(fontWeight: FontWeight.w400, fontFamily: primaryFont);

  TextStyle get textTitleMenu =>
      TextStyle(fontWeight: FontWeight.w400, fontFamily: primaryFont);
}
