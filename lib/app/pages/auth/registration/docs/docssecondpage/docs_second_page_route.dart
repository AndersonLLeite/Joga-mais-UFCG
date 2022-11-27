import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/pages/auth/registration/docs/docssecondpage/presenter/docs_second_page_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/auth/registration/docs/docssecondpage/docs_second_page.dart';
import 'presenter/docs_second_page_presenter_impl.dart';

class DocsSecondPageRoute extends FlutterGetItPageRoute {
  const DocsSecondPageRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<DocsSecondPagePresenter>(
            (i) => DocsSecondPagePresenterImpl())
      ];

  @override
  WidgetBuilder get page =>
      (context) => DocsSecondPage(presenter: context.get());
}
