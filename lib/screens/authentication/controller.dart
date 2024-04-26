import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/const/enum_const.dart';
import 'package:share_data/global_states/top_screen_global_state.dart';
import 'package:share_data/screens/authentication/state_notifier.dart';

final authenticationControllerProvider = Provider<AuthenticationController>(
  (ref) => AuthenticationController(ref),
);

class AuthenticationController {
  AuthenticationController(this._ref);

  final Ref _ref;

  // global state
  TopScreenGlobalStateNotifier get _topScreenGlobalStateNotifier =>
      _ref.read(topScreenGlobalStateProvider.notifier);

  // state notifier
  AuthenticationStateNotifier get _authenticationStateNotifier =>
      _ref.read(authenticationStateNotifierProvider.notifier);

  void init() {
    _topScreenGlobalStateNotifier.setTopScreenType(
      TopScreenType.authentication,
    );
  }

  void onTapEmail() {
    _authenticationStateNotifier.setIsShowEmailAuthentication(true);
  }

  void onTapGoogle() {
    _authenticationStateNotifier.setIsShowEmailAuthentication(false);
  }

  void onTapApple() {
    _authenticationStateNotifier.setIsShowEmailAuthentication(false);
  }

  void onTapCreateAccount() {
    _authenticationStateNotifier.setIsLogin(false);
  }

  void onTapLoginAccount() {
    _authenticationStateNotifier.setIsLogin(true);
  }
}
