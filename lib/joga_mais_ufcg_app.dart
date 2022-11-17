import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'app/pages/home/home_page.dart';
import 'app/pages/splash/view/splash_route.dart';

class JogaMaisUfcgApp extends StatelessWidget {
  const JogaMaisUfcgApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        
      ],
      child: MaterialApp(
        title: 'Joga + UFCG',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routes: {
          '/': (_) => const SplashRoute(),
         // '/auth/login': (_) => const LoginPage(),
          //'/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomePage()
        },
      ),
    );
  }
}
