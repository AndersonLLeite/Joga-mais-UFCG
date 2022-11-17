import 'package:flutter/material.dart';

import 'package:joga_mais_ufcg/app/pages/splash/presenter/splash_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/splash/view/splash_view_impl.dart';

import '../../core/ui/styles/colors_app.dart';

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
      appBar: AppBar(
        title: const Text(
          'Splash page',
          style: TextStyle(fontFamily: 'Inter'),
        ),
      ),
      body: Container(
        width: 300,
        height: 200,
        child: Image.asset('assets/images/handWithPhone.png'),
      ),
    );
  }
}
