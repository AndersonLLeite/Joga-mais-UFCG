import 'package:flutter/material.dart';

import 'package:joga_mais_ufcg/app/pages/docs/docsfirstpage/presenter/docs_first_page_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/docs/docsfirstpage/view/docs_first_page_view_impl.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/styles/button_styles.dart';
import '../../../core/ui/styles/text_styles.dart';
import '../../../core/ui/widgets/text_rich_login.dart';

class DocsFirstPage extends StatefulWidget {
  final DocsFirstPagePresenter presenter;

  const DocsFirstPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<DocsFirstPage> createState() => _DocsFirstPageState();
}

class _DocsFirstPageState extends DocsFirstPageViewImpl {
  final registrationNumerEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final double marginLeft = 0.1;
  final double marginRigth = 0.13;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enviar Documentos',
          style: TextStyles.instance.textTitlePrimary.copyWith(fontSize: 26),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 20,
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth,
                      bottom: 5),
                  child: Text(
                    'A administração da UFCG precisa validar os seus documentos para permitir o seu cadastro na plataforma.',
                    style: TextStyles.instance.textSubTitleSecondary
                        .copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 25,
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth,
                      bottom: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Seu RG',
                      style: TextStyles.instance.textTitlePrimary
                          .copyWith(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Número do CPF',
                        style: TextStyles.instance.textTitleForm
                            .copyWith(fontSize: 16),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth,
                      top: 10,
                      bottom: 10),
                  child: TextFormField(
                    controller: registrationNumerEC,
                    validator: Validatorless.multiple([
                      Validatorless.required('Obrigatório'),
                      Validatorless.number('Valor informado não é um número ')
                    ]),
                    decoration: InputDecoration(
                      label: Text(
                        'somente números',
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
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth,
                      top: 10),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Frente do Documento',
                        style: TextStyles.instance.textTitleForm
                            .copyWith(fontSize: 16),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth,
                      top: 10),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyles.instance.transparentButton,
                      child: Row(
                        children: [
                          const Icon(Icons.cloud_upload),
                          Text(
                            ' Realizar upload do arquivo',
                            style: TextStyles.instance.labelForm,
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth,
                      top: 10),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Verso do documento',
                        style: TextStyles.instance.textTitleForm
                            .copyWith(fontSize: 16),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth,
                      top: 10),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyles.instance.transparentButton,
                      child: Row(
                        children: [
                          const Icon(Icons.cloud_upload),
                          Text(
                            ' Realizar upload do arquivo',
                            style: TextStyles.instance.labelForm,
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * marginLeft,
                      right: MediaQuery.of(context).size.width * marginRigth,
                      top: 25,
                      bottom: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      final validForm =
                          formKey.currentState?.validate() ?? false;
                      if (validForm) {
                        Navigator.of(context).pushNamed('/docs/docssecondpage');
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
                ),
                const TextRichLogin()
              ],
            )),
      ),
    );
  }
}
