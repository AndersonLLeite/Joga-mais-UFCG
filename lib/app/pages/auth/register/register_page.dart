import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/widgets/text_rich_login.dart';

import 'package:joga_mais_ufcg/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/auth/register/presenter/register_presenter_impl.dart';
import 'package:joga_mais_ufcg/app/pages/auth/register/view/register_view_impl.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/styles/button_styles.dart';
import '../../../core/ui/styles/colors_app.dart';
import '../../../core/ui/styles/text_styles.dart';
import '../../../core/ui/widgets/text_rich_register.dart';

class RegisterPage extends StatefulWidget {
  final RegisterPresenter presenter;
  const RegisterPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends RegisterViewImpl {
  final emailEC = TextEditingController();
  final nameEC = TextEditingController();
  final whatsAppNumberEC = TextEditingController();
  final passwordEC = TextEditingController();
  final repeatPassworwEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final double marginLeft = 0.11;
  final double marginRigth = 0.11;

  bool checkBox = false;
  void setStateCheckBox(bool value) {
    setState(() {
      checkBox == true ? false : true;
    });
  }

  @override
  void dispose() {
    emailEC.dispose();
    nameEC.dispose();
    whatsAppNumberEC.dispose();
    passwordEC.dispose();
    repeatPassworwEC.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.instance.background,
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate.fixed([
            Form(
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
                      'Realizar Cadastro',
                      style: TextStyles.instance.textTitlePrimary
                          .copyWith(fontSize: 35),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Email',
                          style: TextStyles.instance.textTitleForm
                              .copyWith(fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 10,
                        bottom: 10),
                    child: TextFormField(
                      controller: emailEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Obrigat??rio'),
                        Validatorless.email('Email inv??lido')
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
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 13),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Nome Completo',
                          style: TextStyles.instance.textTitleForm
                              .copyWith(fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 10,
                        bottom: 10),
                    child: TextFormField(
                      controller: nameEC,
                      validator: Validatorless.multiple([
                        Validatorless.required("Obrigat??rio"),
                      ]),
                      decoration: InputDecoration(
                        label: Text(
                          'J??o da Silva',
                          style: TextStyles.instance.labelForm,
                        ),
                        fillColor: Colors.transparent,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: const Padding(
                          padding: EdgeInsetsDirectional.only(start: 8.0),
                          child: Icon(
                            Icons.person_pin,
                            color: Colors.white,
                          ), // myIcon is a 48px-wide widget.
                        ),
                      ),
                      style: TextStyles.instance.labelForm,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 13),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'N??mero do WhatsApp',
                          style: TextStyles.instance.textTitleForm
                              .copyWith(fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 10,
                        bottom: 10),
                    child: TextFormField(
                      controller: whatsAppNumberEC,
                      validator: Validatorless.multiple([
                        Validatorless.required("Obrigat??rio"),
                        Validatorless.number('N??mero de telefone inv??lido')
                      ]),
                      decoration: InputDecoration(
                        label: Text(
                          //TODO Verificar forma como o backend quer receber esse dado
                          '(83)91122-3344',
                          style: TextStyles.instance.labelForm,
                        ),
                        fillColor: Colors.transparent,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: const Padding(
                          padding: EdgeInsetsDirectional.only(start: 8.0),
                          child: Icon(
                            Icons.whatsapp,
                            color: Colors.white,
                          ), // myIcon is a 48px-wide widget.
                        ),
                      ),
                      style: TextStyles.instance.labelForm,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 13),
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
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 10,
                        bottom: 10),
                    child: TextFormField(
                      controller: passwordEC,
                      validator: Validatorless.multiple([
                        Validatorless.required("Obrigat??rio"),
                        Validatorless.min(
                            6, 'Tem que ter pelo menos 6 caracteres'),
                      ]),
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text(
                          'Digite aqui a sua senha',
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
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 13),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Confirmar Senha',
                          style: TextStyles.instance.textTitleForm
                              .copyWith(fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * marginRigth,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        top: 10,
                        bottom: 10),
                    child: TextFormField(
                      controller: repeatPassworwEC,
                      validator: Validatorless.multiple([
                        Validatorless.required("Obrigat??rio"),
                        Validatorless.min(
                            6, 'Tem que ter pelo menos 6 caracteres'),
                        Validatorless.compare(
                            passwordEC, 'As senhas informadas n??o s??o iguais')
                      ]),
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text(
                          'Confirme aqui a sua senha',
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
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white;
                    }
                    return Colors.white;
                  }),
                  checkColor: ColorsApp.instance.primary,
                  value: checkBox,
                  shape: const CircleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      checkBox = value!;
                    });
                  },
                ),
                Text(
                  'Fa??o parte da UFCG',
                  style: TextStyles.instance.textTitleCheckBox
                      .copyWith(fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * marginRigth,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  bottom: 25),
              child: ElevatedButton(
                onPressed: () {
                  final validForm = formKey.currentState?.validate() ?? false;
                  if (validForm) {
                    Navigator.of(context).pushNamed('/docs/docsfirstpage');
                  }
                },
                style: ButtonStyles.instance.primaryButton,
                child: const Text('Pr??xima etapa'),
              ),
            ),
          ])),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: const [Spacer(), TextRichLogin()],
            ),
          )
        ],
      ),
    );
  }
}
