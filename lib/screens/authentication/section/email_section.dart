import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/components/frame_rounded_button_component.dart';
import 'package:share_data/components/title_text_field_component.dart';
import 'package:share_data/const/color_const.dart';
import 'package:share_data/screens/authentication/controller.dart';
import 'package:share_data/screens/authentication/state_notifier.dart';

class EmailSection extends ConsumerWidget {
  const EmailSection({
    super.key,
    required this.emailTextEditingController,
    required this.passwordTextEditingController,
  });

  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // controller
    final authenticationController = ref.read(authenticationControllerProvider);

    // state notifier
    final isLogin = ref.watch(
      authenticationStateNotifierProvider.select(
        (value) => value.isLogin,
      ),
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FrameRoundedButtonComponent(
              height: 40,
              width: 120,
              title: '新規作成',
              onPressed: () {
                authenticationController.onTapCreateAccount();
              },
              sideColor: ColorConst.colorsBlack,
              buttonColor:
                  isLogin ? ColorConst.colorsWhite : ColorConst.appColor,
            ),
            FrameRoundedButtonComponent(
              height: 40,
              width: 120,
              title: 'ログイン',
              onPressed: () {
                authenticationController.onTapLoginAccount();
              },
              sideColor: ColorConst.colorsBlack,
              buttonColor:
                  isLogin ? ColorConst.appColor : ColorConst.colorsWhite,
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        TitleTextFieldComponent(
          title: 'メールアドレス',
          textEditingController: emailTextEditingController,
          onChanged: (inputtedEmail) {
            authenticationController.onChangedInputtedEmail(
              inputtedEmail,
            );
          },
        ),
        const SizedBox(
          height: 8,
        ),
        TitleTextFieldComponent(
          title: 'パスワード',
          textEditingController: passwordTextEditingController,
          onChanged: (inputtedPassword) {
            authenticationController.onChangedInputtedPassword(
              inputtedPassword,
            );
          },
        ),
        const SizedBox(
          height: 32,
        ),
        FrameRoundedButtonComponent(
          height: 50,
          width: 200,
          title: isLogin ? 'ログイン' : '新規作成',
          onPressed: () {
            if (isLogin) {
              authenticationController.onTapExecuteLoginAccount();
            } else {
              authenticationController.onTapCreateAccount();
            }
          },
          sideColor: ColorConst.colorsBlack,
        ),
      ],
    );
  }
}
