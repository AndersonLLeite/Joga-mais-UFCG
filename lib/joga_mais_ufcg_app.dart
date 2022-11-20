import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/core/ui/theme/theme_config.dart';
import 'package:joga_mais_ufcg/app/pages/auth/login/login_route.dart';
import 'package:joga_mais_ufcg/app/pages/docs/docsfirstpage/docs_first_page_route.dart';
import 'package:joga_mais_ufcg/app/pages/docs/docssecondpage/docs_second_page_route.dart';

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
          '/': (_) => const SplashRoute(),
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
