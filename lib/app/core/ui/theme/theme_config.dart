import 'package:flutter/material.dart';

import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: ColorsApp.instance.greyText),
  );

  static final theme = ThemeData(
      scaffoldBackgroundColor: ColorsApp.instance.background,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle:
              TextStyles.instance.textTitleMenu.copyWith(fontSize: 26)),
      primaryColor: ColorsApp.instance.primary,
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsApp.instance.primary,
          primary: ColorsApp.instance.primary,
          secondary: ColorsApp.instance.secondary),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          contentPadding: const EdgeInsets.all(13),
          border: _defaultInputBorder,
          enabledBorder: _defaultInputBorder,
          focusedBorder: _defaultInputBorder));
}
