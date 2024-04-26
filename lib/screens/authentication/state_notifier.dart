import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'state_notifier.freezed.dart';

final authenticationStateNotifierProvider = StateNotifierProvider.autoDispose<
    AuthenticationStateNotifier, AuthenticationState>(
  (ref) => AuthenticationStateNotifier(const AuthenticationState()),
);

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(false) bool isShowEmailAuthentication,
    @Default(false) bool isLogin,
    @Default('') String inputtedEmail,
    @Default('') String inputtedPassword,
  }) = _AuthenticationState;
}

class AuthenticationStateNotifier extends StateNotifier<AuthenticationState> {
  AuthenticationStateNotifier(super.state);

  ///
  /// set
  ///

  void setIsShowEmailAuthentication(bool isShowEmailAuthentication) {
    state = state.copyWith(
      isShowEmailAuthentication: isShowEmailAuthentication,
    );
  }

  void setIsLogin(bool isLogin) {
    state = state.copyWith(isLogin: isLogin);
  }

  void setInputtedEmail(String inputtedEmail) {
    state = state.copyWith(inputtedEmail: inputtedEmail);
  }

  void setInputtedPassword(String inputtedPassword) {
    state = state.copyWith(inputtedPassword: inputtedPassword);
  }
}
