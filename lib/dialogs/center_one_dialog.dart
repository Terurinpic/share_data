import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/const/color_const.dart';
import 'package:share_data/const/text_style_const.dart';
import 'package:share_data/main.dart';

final centerOneDialogProvider = Provider<CenterOneDialog>(
  (ref) => CenterOneDialog(ref),
);

class CenterOneDialog {
  const CenterOneDialog(this._ref);

  final Ref _ref;

  BuildContext get _currentContext =>
      _ref.read(navigatorKeyProvider).currentContext!;

  Future<void> show({
    required String contents,
    required String buttonTitle,
    required Function() onTapButton,
    TextStyle titleStyle = TextStyleConst.body14Regular,
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
                      child: SingleChildScrollView(
                        child: Text(
                          contents,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: GestureDetector(
                  onTap: onTapButton,
                  child: Container(
                    height: 50,
                    width: double.infinity,
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
                    child: Center(
                      child: Text(
                        buttonTitle,
                        style: titleStyle,
                      ),
                    ),
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
