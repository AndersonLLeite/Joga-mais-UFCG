import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/button_styles.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';

import 'package:joga_mais_ufcg/app/pages/splash/presenter/splash_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/splash/view/splash_view_impl.dart';

import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/widgets/text_rich_register.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;

  const SplashPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.instance.background,
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.40,
              ),
              SizedBox(
                width: 300,
                height: 144,
                child: Image.asset('assets/images/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 60, left: 60),
                child: Text(
                  'Agende com tranquilidade o seu horário',
                  style: TextStyles.instance.textTitlePrimary
                      .copyWith(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 40, left: 40),
                child: Text(
                  'Todas as quadras da UFCG disponíveis para agendamento fácil pelo App, acesse ou crie a sua conta!',
                  style: TextStyles.instance.textSubTitleSecondary
                      .copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.12),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyles.instance.secondaryButton,
                  child: Text(
                    '👀 Dar uma olhadinha nas quadras',
                    style: TextStyles.instance.textTitleButton,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.12),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/auth/login');
                  },
                  style: ButtonStyles.instance.primaryButton,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 11,
                        child: Image.asset('assets/images/login.png'),
                      ),
                      Text(
                        ' Realizar login',
                        style: TextStyles.instance.textTitleButton,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: const [Spacer(), TextRichRegister()],
            ),
          )
        ],
      ),
    );
  }
}
