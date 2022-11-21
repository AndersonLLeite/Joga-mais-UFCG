import 'package:flutter/material.dart';

import '../../../core/ui/styles/button_styles.dart';
import '../../../core/ui/styles/text_styles.dart';

class ConfirmReqRedefinePasswordPage extends StatelessWidget {
  const ConfirmReqRedefinePasswordPage({Key? key}) : super(key: key);
  final double marginLeft = 0.12;

  final double marginRigth = 0.12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: SizedBox(
              width: 150,
              height: 72,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 55),
            child: Text(
              'Redefinir senha',
              style:
                  TextStyles.instance.textTitlePrimary.copyWith(fontSize: 35),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 250,
            width: 285,
            child: Image.asset('assets/images/undraw_message_sent.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38, bottom: 15),
            child: Text(
              'Se liga, verifica seu email!',
              style:
                  TextStyles.instance.textTitlePrimary.copyWith(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * marginLeft,
                right: MediaQuery.of(context).size.width * marginRigth,
                bottom: 38),
            child: Text(
              'Mandamos um email com o link de acesso para a redefinição da sua senha de acesso!',
              style: TextStyles.instance.textSubTitleSecondary
                  .copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.12),
            child: ElevatedButton(
              onPressed: () {
                //TODO redirecionar para quadras
              },
              style: ButtonStyles.instance.secondaryButton,
              child: Text(
                '👀 Dar uma olhadinha nas quadras',
                style: TextStyles.instance.textTitleButton,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
