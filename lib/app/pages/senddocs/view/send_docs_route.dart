
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/pages/senddocs/send_docs_page.dart';
import '../presenter/send_docs_presenter.dart';
import '../presenter/send_docs_presenter_impl.dart';

class SendDocsRoute extends FlutterGetItPageRoute {
  @override
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton<SendDocsPresenter>((i) => SendDocsPresenterImpl())];

  @override
  WidgetBuilder get page => (context) => SendDocsPage(presenter: context.get());
}
