import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self isntance
  ColorsApp._();
  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF0E7FC1);
  Color get secondary => const Color(0xFF3C4A5E);
  Color get background => const Color(0xFF233043);
  Color get whiteText => const Color(0xFFFFFFFF);
  Color get blue => const Color(0xFF38B6FF);
  Color get greyText => const Color(0xFFC8C8C8);
  Color get red => const Color(0xFFCB6060);
  Color get greyInputText => const Color(0xFFBEBEBE);
}

extension ColorAppExtension on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
