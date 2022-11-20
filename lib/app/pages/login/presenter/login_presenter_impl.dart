import 'package:joga_mais_ufcg/app/pages/login/view/login_view.dart';

import './login_presenter.dart';

class LoginPresenterImpl implements LoginPresenter {
  late final LoginView _view;
set view(view) => _view = view;
}
