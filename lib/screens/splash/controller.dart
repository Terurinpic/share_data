import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/const/enum_const.dart';
import 'package:share_data/global_states/top_screen_global_state.dart';

final splashControllerProvider = Provider<SplashController>(
  (ref) => SplashController(ref),
);

class SplashController {
  SplashController(this._ref);

  final Ref _ref;

  // global state
  TopScreenGlobalStateNotifier get _topScreenGlobalStateNotifier =>
      _ref.read(topScreenGlobalStateProvider.notifier);

  void init() {
    _topScreenGlobalStateNotifier.setTopScreenType(
      TopScreenType.authentication,
    );
  }
}
