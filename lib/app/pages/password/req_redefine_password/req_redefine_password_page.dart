import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/button_styles.dart';

import 'package:joga_mais_ufcg/app/pages/password/req_redefine_password/presenter/req_redefine_password_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/password/req_redefine_password/view/req_redefine_password_view_impl.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/styles/text_styles.dart';

class ReqRedefinePasswordPage extends StatefulWidget {
  final ReqRedefinePasswordPresenter presenter;

  const ReqRedefinePasswordPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<ReqRedefinePasswordPage> createState() =>
      _ReqRedefinePasswordPageState();
}

class _ReqRedefinePasswordPageState extends ReqRedefinePasswordViewImpl {
  final emailEC = TextEditingController();
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
                    'Email cadastrado',
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
                controller: emailEC,
                validator: Validatorless.multiple([
                  Validatorless.required('Obrigatório'),
                  Validatorless.email('Email inválido')
                ]),
                decoration: InputDecoration(
                  label: Text(
                    'seumelhor@gmail.com',
                    style: TextStyles.instance.labelForm,
                  ),
                  fillColor: Colors.transparent,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: const Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.0),
                    child: Icon(
                      Icons.email,
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
                  Navigator.of(context).pushNamed('confirmReqRedefinePassword');
                  //TODO enviar email
                },
                style: ButtonStyles.instance.primaryButton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enviar E-mail',
                      style: TextStyles.instance.textTitleButton,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 260,
              width: 260,
              child: Image.asset('assets/images/undraw_access_account.png'),
            )
          ],
        ),
      ),
    ));
  }
}
