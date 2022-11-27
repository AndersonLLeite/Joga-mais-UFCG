import 'package:flutter/material.dart';

import '../../../core/ui/styles/text_styles.dart';
import '../../../core/ui/widgets/button_go_to_courts_page_widget.dart';

class ConfirmSchedulingPage extends StatelessWidget {
  const ConfirmSchedulingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const marginLeft = 0.1;
    const marginRight = 0.1;

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
                  right: MediaQuery.of(context).size.width * marginRight,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  bottom: 10),
              child: Text(
                'Boaa, seu agendamento foi confirmado!',
                textAlign: TextAlign.center,
                style:
                    TextStyles.instance.textTitlePrimary.copyWith(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * marginRight,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  bottom: 40),
              child: Text(
                'Fique de olho no seu email, qualquer notificação sobre o status do agendamento pode ser enviada por lá!',
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
                child: const ButtonGoToCourtsPageWidget()),
          ],
        ),
      ),
    );
  }
}
