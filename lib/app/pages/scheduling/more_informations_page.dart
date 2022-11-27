import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/colors_app.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';
import 'package:validatorless/validatorless.dart';

import '../../core/ui/styles/button_styles.dart';

class MoreInformationsPage extends StatefulWidget {
  const MoreInformationsPage({Key? key}) : super(key: key);

  @override
  State<MoreInformationsPage> createState() => _MoreInformationsPageState();
}

class _MoreInformationsPageState extends State<MoreInformationsPage> {
  final formKey = GlobalKey<FormState>();
  final playersListEC = TextEditingController();
  final marginLeft = 0.1;
  final marginRight = 0.1;
  @override
  void dispose() {
    playersListEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: ColorsApp.instance.secondary),
              child: const BackButton(),
            ),
          ],
        ),
        title: Text(
          'Mais informações',
          style: TextStyles.instance.textTitlePrimary.copyWith(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * marginLeft,
              right: MediaQuery.of(context).size.width * marginRight),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Lista de jogadores',
                  style: TextStyles.instance.textTitleSecondary
                      .copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  maxLines: 5,
                  controller: playersListEC,
                  validator: Validatorless.multiple([
                    Validatorless.required('Obrigatório'),
                  ]),
                  decoration: InputDecoration(
                    label: Text(
                      'Preencha separando por vírgulas ou adicionando novas linhas...',
                      style: TextStyles.instance.labelForm,
                    ),
                    fillColor: Colors.transparent,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  style: TextStyles.instance.labelForm,
                ),
                const SizedBox(
                  height: 45,
                ),
                ElevatedButton(
                  onPressed: () {
                    final validForm = formKey.currentState?.validate() ?? false;
                    if (validForm) {
                      Navigator.of(context).pushNamed('/confirmScheduling');
                    }
                  },
                  style: ButtonStyles.instance.primaryButton,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.check),
                      Text(
                        ' Confirmar',
                        style: TextStyles.instance.textTitleButton,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
