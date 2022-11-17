import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';

import 'colors_app.dart';

class ButtonStyles {
  static ButtonStyles? _instance;
  // Avoid self isntance
  ButtonStyles._();
  static ButtonStyles get instance{
    _instance??=  ButtonStyles._();
    return _instance!;
   }

    ButtonStyle get primaryButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      textStyle: TextStyles.instance.textTitleButton
          .copyWith(fontSize: 16));

     ButtonStyle get secondaryButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      textStyle: TextStyles.instance.textTitleButton
          .copyWith(fontSize: 16));
    
     ButtonStyle get redButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      textStyle: TextStyles.instance.textTitleButton
          .copyWith(fontSize: 16));
}