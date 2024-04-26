import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/components/separate_divider_component.dart';
import 'package:share_data/const/color_const.dart';
import 'package:share_data/main.dart';

final centerTwoDialogProvider = Provider<CenterTwoDialog>(
  (ref) => CenterTwoDialog(ref),
);

class CenterTwoDialog {
  const CenterTwoDialog(this._ref);

  final Ref _ref;

  BuildContext get _currentContext =>
      _ref.read(navigatorKeyProvider).currentContext!;

  Future<void> show({
    required String contents,
    required String firstButtonTitle,
    required Function() onTapFirstButton,
    required TextStyle firstTitleStyle,
    required String secondButtonTitle,
    required Function() onTapSecondButton,
    required TextStyle secondTitleStyle,
  }) {
    return showDialog<void>(
      context: _currentContext,
      barrierDismissible: false,
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: ColorConst.colorsWhite,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                        child: SingleChildScrollView(child: Text(contents))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: ColorConst.colorsWhite,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(
                        20,
                      ),
                    ),
                    border: Border.all(),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: onTapFirstButton,
                        child: Container(
                          color: Colors.transparent,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              firstButtonTitle,
                              style: firstTitleStyle,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: SeparateDividerComponent(),
                      ),
                      GestureDetector(
                        onTap: onTapSecondButton,
                        child: Container(
                          color: Colors.transparent,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              secondButtonTitle,
                              style: secondTitleStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
