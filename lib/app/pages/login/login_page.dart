import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:joga_mais_ufcg/app/core/ui/styles/button_styles.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/colors_app.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';
import 'package:joga_mais_ufcg/app/core/ui/widgets/text_rich_register.dart';
import 'package:joga_mais_ufcg/app/pages/login/view/login_view_impl.dart';
import 'package:joga_mais_ufcg/app/pages/splash/presenter/splash_presenter.dart';

class LoginPage extends StatefulWidget {
  final SplashPresenter presenter;
  const LoginPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoginViewImpl {
  final ecEmail = TextEditingController();
  final ecPassword = TextEditingController();

  @override
  void dispose() {
    ecEmail.dispose();
    ecPassword.dispose();
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
                      'Realizar Login',
                      style: TextStyles.instance.textTitlePrimary
                          .copyWith(fontSize: 35),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 47),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Email',
                          style: TextStyles.instance.textTitleForm
                              .copyWith(fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 47),
                    child: TextFormField(
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
                    padding:
                        const EdgeInsets.only(left: 47, right: 47, top: 13),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Senha',
                          style: TextStyles.instance.textTitleForm
                              .copyWith(fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 47),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text(
                          'Digite aqui sua senha',
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
                    padding: const EdgeInsets.only(left: 47),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text.rich(
                        TextSpan(
                            text: 'Esqueceu a senha?',
                            style: TextStyles.instance.textRichLeft
                                .copyWith(fontSize: 16),
                            children: [
                              TextSpan(
                                  text: ' Redefinir',
                                  style: TextStyles.instance.textRich
                                      .copyWith(fontSize: 16),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Navigator.of(context)
                                        .pushNamed('/auth/redefine'))
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47, vertical: 25),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyles.instance.primaryButton,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.check),
                    Text('Confirmar'),
                  ],
                ),
              ),
            ),
          ])),
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
