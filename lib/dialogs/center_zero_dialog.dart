import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/const/color_const.dart';
import 'package:share_data/const/text_style_const.dart';
import 'package:share_data/main.dart';

final centerZeroDialogProvider = Provider<CenterZeroDialog>(
  (ref) => CenterZeroDialog(ref),
);

class CenterZeroDialog {
  const CenterZeroDialog(this._ref);

  final Ref _ref;

  BuildContext get _currentContext =>
      _ref.read(navigatorKeyProvider).currentContext!;

  Future<void> show({
    required String contents,
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
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
