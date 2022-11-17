import '../view/splash_view.dart';
import './splash_presenter.dart';

class SplashPresenterImpl implements SplashPresenter {
    late final SplashView _view;
  set view(view) => _view = view;
}