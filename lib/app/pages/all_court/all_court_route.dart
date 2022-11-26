
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:joga_mais_ufcg/app/pages/all_court/all_court_page.dart';
import 'package:joga_mais_ufcg/app/pages/all_court/presenter/all_court_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/all_court/presenter/all_court_presenter_impl.dart';

class AllCourtRoute extends FlutterGetItPageRoute{
  const AllCourtRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [Bind.lazySingleton<AllCourtPresenter>((i) => AllCourtPresenterImpl())];

  
  @override
  WidgetBuilder get page => (context) => AllCourtPage(presenter: context.get());
}