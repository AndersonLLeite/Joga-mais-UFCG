import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/pages/password/redefine_password/controler/redefine_password_controller.dart';
import 'package:joga_mais_ufcg/app/pages/password/redefine_password/controler/redefine_password_controller_impl.dart';
import 'package:joga_mais_ufcg/app/pages/password/redefine_password/redefine_password_page.dart';

class RedefinePasswordRoute extends FlutterGetItPageRoute {
  const RedefinePasswordRoute({super.key});
  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<RedefinePasswordController>(
            (i) => RedefinePasswordControllerImpl())
      ];
  @override
  WidgetBuilder get page => (context) => RedefinePasswordPage(
        controller: context.get(),
      );
}
