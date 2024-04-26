import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/const/color_const.dart';
import 'package:share_data/main.dart';

final indicatorProvider = Provider<IndicatorProvider>(
  (ref) => IndicatorProvider(ref),
);

class IndicatorProvider {
  IndicatorProvider(this._ref);

  final Ref _ref;

  BuildContext get _currentContext =>
      _ref.read(navigatorKeyProvider).currentContext!;

  void showCircleIndicator() {
    showGeneralDialog<void>(
      context: _currentContext,
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 300),
      barrierColor: ColorConst.transparentColor100,
      pageBuilder: (_, __, ___) {
        return const Center(
          child: CircularProgressIndicator(
            color: ColorConst.appColor,
          ),
        );
      },
    );
  }

  void hideCircleIndicator() {
    Navigator.of(_currentContext).pop();
  }
}
