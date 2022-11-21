import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';

import '../../../core/ui/styles/button_styles.dart';

class ConfirmReqRegisterPage extends StatelessWidget {
  const ConfirmReqRegisterPage({Key? key}) : super(key: key);

  final double marginLeft = 0.1;

  final double marginRigth = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90, bottom: 20),
              child: Center(
                child: SizedBox(
                  height: 144,
                  width: 300,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * marginRigth,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  bottom: 10),
              child: Text(
                'Boaa, seu cadastro está pendente de confirmação!',
                textAlign: TextAlign.center,
                style:
                    TextStyles.instance.textTitlePrimary.copyWith(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * marginRigth,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  bottom: 40),
              child: Text(
                'Fique de olho no seu email, vamos te avisar por lá assim que ele for aprovado!',
                textAlign: TextAlign.center,
                style: TextStyles.instance.textSubTitleSecondary
                    .copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 200,
              width: 160,
              child: Image.asset('assets/images/undraw_confirmed.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.12,
                  vertical: 50),
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
      ),
    );
  }
}
