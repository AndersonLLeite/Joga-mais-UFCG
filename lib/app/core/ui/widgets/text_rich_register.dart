import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../styles/text_styles.dart';

class TextRichRegister extends StatelessWidget {
  const TextRichRegister({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Text.rich(
        TextSpan(
            text: 'Não tem uma conta?',
            style: TextStyles.instance.textRichLeft.copyWith(fontSize: 16),
            children: [
              TextSpan(
                  text: ' Cadastre-se',
                  style: TextStyles.instance.textRich.copyWith(fontSize: 16),
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => Navigator.of(context).pushNamed('/auth/register'))
            ]),
      ),
    );
  }
}
