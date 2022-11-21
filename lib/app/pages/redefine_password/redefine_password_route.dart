
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/pages/redefine_password/presenter/redefine_password_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/redefine_password/presenter/redefine_password_presenter_impl.dart';
import 'package:joga_mais_ufcg/app/pages/redefine_password/redefine_password_page.dart';

class RedefinePasswordRoute extends FlutterGetItPageRoute {
  const RedefinePasswordRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<RedefinePasswordPresenter>(
            (i) => RedefinePasswordPresenterImpl())
      ];
  @override
  WidgetBuilder get page =>
      (context) => RedefinePasswordPage(presenter: context.get());
}
