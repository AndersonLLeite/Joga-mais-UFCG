
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'login_page.dart';
import 'presenter/login_presenter.dart';
import 'presenter/login_presenter_impl.dart';

class LoginRoute extends FlutterGetItPageRoute{
  const LoginRoute({super.key});

  @override
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton<LoginPresenter>((i) => LoginPresenterImpl())];

  @override
  WidgetBuilder get page => (context) => LoginPage(presenter: context.get());
  
}