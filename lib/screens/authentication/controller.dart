import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/const/enum_const.dart';
import 'package:share_data/const/message_const.dart';
import 'package:share_data/const/sentence_const.dart';
import 'package:share_data/dialogs/center_one_dialog.dart';
import 'package:share_data/dialogs/center_two_dialog.dart';
import 'package:share_data/global_states/auth_global_state.dart';
import 'package:share_data/global_states/top_screen_global_state.dart';
import 'package:share_data/main.dart';
import 'package:share_data/providers/indicator_provider.dart';
import 'package:share_data/screens/authentication/state_notifier.dart';
import 'package:share_data/use_cases/auth_use_case.dart';

final authenticationControllerProvider = Provider<AuthenticationController>(
  (ref) => AuthenticationController(ref),
);

class AuthenticationController {
  AuthenticationController(this._ref);

  final Ref _ref;

  // others
  BuildContext get _currentContext =>
      _ref.read(navigatorKeyProvider).currentContext!;
  CenterOneDialog get _centerOneDialog => _ref.read(centerOneDialogProvider);
  CenterTwoDialog get _centerTwoDialog => _ref.read(centerTwoDialogProvider);
  IndicatorProvider get _indicator => _ref.read(indicatorProvider);

  // global state
  TopScreenGlobalStateNotifier get _topScreenGlobalStateNotifier =>
      _ref.read(topScreenGlobalStateProvider.notifier);
  AuthGlobalStateNotifier get _authGlobalStateNotifier =>
      _ref.read(authGlobalStateProvider.notifier);

  // use case
  AuthUseCase get _authUseCase => _ref.read(authUseCaseProvider);

  // state notifier
  AuthenticationStateNotifier get _authenticationStateNotifier =>
      _ref.read(authenticationStateNotifierProvider.notifier);
  AuthenticationState get _authenticationState =>
      _ref.read(authenticationStateNotifierProvider);

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

  void onChangedInputtedEmail(String inputtedEmail) {
    _authenticationStateNotifier.setInputtedEmail(inputtedEmail);
  }

  void onChangedInputtedPassword(String inputtedPassword) {
    _authenticationStateNotifier.setInputtedPassword(inputtedPassword);
  }

  Future<void> onTapExecuteCreateAccount() async {
    final inputtedEmail = _authenticationState.inputtedEmail;
    final inputtedPassword = _authenticationState.inputtedPassword;

    if (inputtedEmail.isEmpty || inputtedPassword.isEmpty) {
      await _centerOneDialog.show(
        contents: SentenceConst.needEmailAndPassword,
        firstButtonTitle: SentenceConst.close,
        onTapFirstButton: () {
          Navigator.of(_currentContext).pop();
        },
      );
      return;
    }

    _indicator.showCircleIndicator();
    final result = await _authUseCase.signUpByEmail(
      email: inputtedEmail,
      password: inputtedPassword,
    );
    _indicator.hideCircleIndicator();

    final error = result.errorModel;
    if (error != null) {
      await _centerOneDialog.show(
        contents: error.errorMessage ?? MessageConst.unknownError,
        firstButtonTitle: SentenceConst.close,
        onTapFirstButton: () {
          Navigator.of(_currentContext).pop();
        },
      );
      return;
    }

    _authGlobalStateNotifier.fetchCurrentAuth();

    await _centerTwoDialog.show(
      contents: '登録いただいたアドレスに、確認メールを送信しました。\n'
          'メールをご確認ください。',
      firstButtonTitle: 'とじる',
      onTapFirstButton: () {
        Navigator.of(_currentContext).pop();
      },
      secondButtonTitle: '再送信',
      onTapSecondButton: () async {
        _indicator.showCircleIndicator();
        await _authUseCase.resentConfirmationEmail(
          emailAddress: inputtedEmail,
        );
        _indicator.hideCircleIndicator();

        // ignore: use_build_context_synchronously
        Navigator.of(_currentContext).pop();
      },
    );
  }

  Future<void> onTapExecuteLoginAccount() async {
    final inputtedEmail = _authenticationState.inputtedEmail;
    final inputtedPassword = _authenticationState.inputtedPassword;

    if (inputtedEmail.isEmpty || inputtedPassword.isEmpty) {
      await _centerOneDialog.show(
        contents: SentenceConst.needEmailAndPassword,
        firstButtonTitle: SentenceConst.close,
        onTapFirstButton: () {
          Navigator.of(_currentContext).pop();
        },
      );
      return;
    }

    _indicator.showCircleIndicator();
    final result = await _authUseCase.loginByEmail(
      email: inputtedEmail,
      password: inputtedPassword,
    );
    _indicator.hideCircleIndicator();

    final error = result.errorModel;
    if (error != null) {
      await _centerOneDialog.show(
        contents: error.errorMessage ?? MessageConst.unknownError,
        firstButtonTitle: SentenceConst.close,
        onTapFirstButton: () {
          Navigator.of(_currentContext).pop();
        },
      );
      return;
    }

    _authGlobalStateNotifier.fetchCurrentAuth();
  }
}
