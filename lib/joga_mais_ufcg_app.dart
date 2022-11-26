import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/core/ui/theme/theme_config.dart';
import 'package:joga_mais_ufcg/app/models/court/court.dart';
import 'package:joga_mais_ufcg/app/pages/all_court/all_court_route.dart';
import 'package:joga_mais_ufcg/app/pages/auth/login/login_route.dart';
import 'package:joga_mais_ufcg/app/pages/confirmations/confirm_redefinition_password/confirm_redefinition_password.dart';
import 'package:joga_mais_ufcg/app/pages/confirmations/confirm_req_redefine_password/confirm_req_redefine_password_page.dart';
import 'package:joga_mais_ufcg/app/pages/confirmations/confirm_req_register/confirm_req_register_page.dart';
import 'package:joga_mais_ufcg/app/pages/court/court_page.dart';
import 'package:joga_mais_ufcg/app/pages/docs/docsfirstpage/docs_first_page_route.dart';
import 'package:joga_mais_ufcg/app/pages/docs/docssecondpage/docs_second_page_route.dart';
import 'package:joga_mais_ufcg/app/pages/password/redefine_password/redefine_password_route.dart';
import 'package:joga_mais_ufcg/app/pages/password/req_redefine_password/req_redefine_password_route.dart';

import 'app/pages/auth/register/register_route.dart';
import 'app/pages/home/home_page.dart';
import 'app/pages/auth/login/login_page.dart';
import 'app/pages/splash/view/splash_route.dart';

class JogaMaisUfcgApp extends StatelessWidget {
  const JogaMaisUfcgApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [],
      child: MaterialApp(
        title: 'Joga + UFCG',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => CourtPage(
                court: Court(
                    exclusivity: true,
                    title: "Quadra de tênis",
                    image: "assets/images/court_image.png",
                    description:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut porta efficitur pulvinar. Ut eget ipsum eget odio viverra auctor auctor ut felis. Cras egestas dictum nibh, et porta purus fermentum vitae. ',
                    businessHour: 'Abre às 8h30, fecha às 17h',
                    scheddulingDuration: '1h30 de duração do agendamento'),
              ),
          //'/': (_) => const SplashRoute(),
          '/allCourts': (_) => const AllCourtRoute(),
          '/confirmRedefinitionPassword': (_) =>
              const ConfirmRedefinitionPassword(),
          '/redefinePassword': (_) => const RedefinePasswordRoute(),
          '/confirmReqRedefinePassword': (_) =>
              const ConfirmReqRedefinePasswordPage(),
          '/reqRedefinePassword': (_) => const ReqRedefinePasswordRoute(),
          '/confirmReqRegister': (_) => const ConfirmReqRegisterPage(),
          '/auth/login': (_) => const LoginRoute(),
          '/auth/register': (_) => const RegisterRoute(),
          '/docs/docsfirstpage': (_) => const DocsFirstPageRoute(),
          '/docs/docssecondpage': (_) => const DocsSecondPageRoute(),
          '/home': (_) => const HomePage()
        },
      ),
    );
  }
}
