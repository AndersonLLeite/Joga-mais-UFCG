import 'package:flutter/material.dart';

import '../../../core/ui/styles/button_styles.dart';
import '../../../core/ui/styles/text_styles.dart';

class ConfirmRedefinitionPassword extends StatelessWidget {
  const ConfirmRedefinitionPassword({Key? key}) : super(key: key);

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
                'Show de bola, deu bom!',
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
                'A sua senha foi redefinida com sucesso,você já pode realizar login com as novas credenciais.',
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
              padding: EdgeInsets.only(
                  top: 40,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  right: MediaQuery.of(context).size.width * marginRigth),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed('/auth/login');
                },
                style: ButtonStyles.instance.secondaryButton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.arrow_back),
                    Text(
                      ' Voltar para a tela de login',
                      style: TextStyles.instance.textTitleButton,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
