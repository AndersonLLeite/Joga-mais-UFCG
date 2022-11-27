
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/pages/auth/registration/docs/docsfirstpage/docs_first_page.dart';
import 'package:joga_mais_ufcg/app/pages/auth/registration/docs/docsfirstpage/presenter/docs_first_page_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/auth/registration/docs/docsfirstpage/presenter/docs_first_page_presenter_impl.dart';

class DocsFirstPageRoute extends FlutterGetItPageRoute {
  const DocsFirstPageRoute({super.key});
  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<DocsFirstPagePresenter>(
            (i) => DocsFirstPagePresenterImpl())
      ];

  @override
  WidgetBuilder get page =>
      (context) => DocsFirstPage(presenter: context.get());
}
