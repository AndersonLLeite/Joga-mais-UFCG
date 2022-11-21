import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/pages/password/req_redefine_password/presenter/req_redefine_password_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/password/req_redefine_password/presenter/req_redefine_password_presenter_impl.dart';
import 'package:joga_mais_ufcg/app/pages/password/req_redefine_password/req_redefine_password_page.dart';

class ReqRedefinePasswordRoute extends FlutterGetItPageRoute {
  const ReqRedefinePasswordRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<ReqRedefinePasswordPresenter>(
            (i) => ReqRedefinePasswordPresenterImpl())
      ];
  @override
  WidgetBuilder get page =>
      (context) => ReqRedefinePasswordPage(presenter: context.get());
}
