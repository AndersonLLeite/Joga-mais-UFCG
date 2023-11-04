import '../view/docs_first_page_view.dart';
import './docs_first_page_presenter.dart';

class DocsFirstPagePresenterImpl implements DocsFirstPagePresenter {
late final DocsFirstPageView _view;
set view(view) => _view = view;
}