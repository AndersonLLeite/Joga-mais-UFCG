import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';

import 'package:joga_mais_ufcg/app/pages/senddocs/presenter/send_docs_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/senddocs/view/send_docs_view_impl.dart';

class SendDocsPage extends StatefulWidget {
  final SendDocsPresenter presenter;

  const SendDocsPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<SendDocsPage> createState() => _SendDocsPageState();
}

class _SendDocsPageState extends SendDocsViewImpl {
  final registrationNumerEC = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enviar Documentos',
          style: TextStyles.instance.textTitlePrimary.copyWith(fontSize: 26),
        ),
      ),
      body: Form(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 32, right: 71, bottom: 5),
            child: Text(
              'A administração da UFCG precisa validar os seus documentos para permitir o seu cadastro na plataforma.',
              style: TextStyles.instance.textSubTitleSecondary
                  .copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 32, right: 71, bottom: 5),
            child: Text(
              'Seu comprovante de matricula',
              style:
                  TextStyles.instance.textTitlePrimary.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 32, right: 71, bottom: 5),
            child: Text(
              'Se você for aluno(a), envie um documento que comprove o seu vínculo ativo com a universidade.',
              style: TextStyles.instance.textSubTitleSecondary
                  .copyWith(fontSize: 16),
              // textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}
