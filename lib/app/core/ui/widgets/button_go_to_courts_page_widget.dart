import 'package:flutter/material.dart';

import '../styles/button_styles.dart';
import '../styles/text_styles.dart';

class ButtonGoToCourtsPageWidget extends StatelessWidget {
  const ButtonGoToCourtsPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/allCourts');
      },
      style: ButtonStyles.instance.secondaryButton,
      child: Text(
        '👀 Dar uma olhadinha nas quadras',
        style: TextStyles.instance.textTitleButton,
      ),
    );
  }
}
