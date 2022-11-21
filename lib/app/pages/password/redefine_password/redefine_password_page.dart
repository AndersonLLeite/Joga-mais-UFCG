import 'package:flutter/material.dart';

import 'package:joga_mais_ufcg/app/pages/password/redefine_password/controler/redefine_password_controller.dart';
import 'package:joga_mais_ufcg/app/pages/password/redefine_password/view/redefine_password_view_impl.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/styles/button_styles.dart';
import '../../../core/ui/styles/text_styles.dart';

class RedefinePasswordPage extends StatefulWidget {
  final RedefinePasswordController controller;

  const RedefinePasswordPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<RedefinePasswordPage> createState() => _RedefinePasswordPageState();
}

class _RedefinePasswordPageState extends RedefinePasswordViewImpl {
  final passwordEC = TextEditingController();
  final newPasswordEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final double marginRight = 0.1;
  final double marginLeft = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: formKey,
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
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Redefinir senha',
                style:
                    TextStyles.instance.textTitlePrimary.copyWith(fontSize: 35),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * marginRight,
                  left: MediaQuery.of(context).size.width * marginLeft),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Senha',
                    style: TextStyles.instance.textTitleForm
                        .copyWith(fontSize: 16),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * marginRight,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  top: 10,
                  bottom: 10),
              child: TextFormField(
                controller: passwordEC,
                validator: Validatorless.multiple([
                  Validatorless.required('Obrigatório'),
                  Validatorless.min(6, 'Tem que ter pelo menos 6 caracteres')
                ]),
                decoration: InputDecoration(
                  label: Text(
                    'digite aqui a sua senha',
                    style: TextStyles.instance.labelForm,
                  ),
                  fillColor: Colors.transparent,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: const Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.0),
                    child: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ), // myIcon is a 48px-wide widget.
                  ),
                ),
                style: TextStyles.instance.labelForm,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 10,
                  right: MediaQuery.of(context).size.width * marginRight,
                  left: MediaQuery.of(context).size.width * marginLeft),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Confirmar nova senha',
                    style: TextStyles.instance.textTitleForm
                        .copyWith(fontSize: 16),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * marginRight,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  top: 10,
                  bottom: 10),
              child: TextFormField(
                controller: newPasswordEC,
                validator: Validatorless.multiple([
                  Validatorless.required('Obrigatório'),
                  Validatorless.min(6, 'Tem que ter pelo menos 6 caracteres'),
                  Validatorless.compare(
                      passwordEC, 'As senhas informadas não são iguais')
                ]),
                decoration: InputDecoration(
                  label: Text(
                    'digite aqui a sua senha',
                    style: TextStyles.instance.labelForm,
                  ),
                  fillColor: Colors.transparent,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: const Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.0),
                    child: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ), // myIcon is a 48px-wide widget.
                  ),
                ),
                style: TextStyles.instance.labelForm,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 21,
                  bottom: 60,
                  right: MediaQuery.of(context).size.width * marginRight,
                  left: MediaQuery.of(context).size.width * marginLeft),
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).pushNamed('confirmReqRedefinePassword');
                  //TODO enviar email
                },
                style: ButtonStyles.instance.primaryButton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Confirmar Redefinição',
                      style: TextStyles.instance.textTitleButton,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
