import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/components/circle_button_with_icon_component.dart';
import 'package:share_data/const/color_const.dart';
import 'package:share_data/const/sentence_const.dart';
import 'package:share_data/const/text_style_const.dart';
import 'package:share_data/screens/authentication/controller.dart';
import 'package:share_data/screens/authentication/section/email_section.dart';
import 'package:share_data/screens/authentication/state_notifier.dart';

class AuthenticationBody extends ConsumerWidget {
  const AuthenticationBody({
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
    final isShowEmailAuthentication = ref.watch(
      authenticationStateNotifierProvider.select(
        (value) => value.isShowEmailAuthentication,
      ),
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 128,
          ),
          const Text(
            SentenceConst.authenticationChoice,
            style: TextStyleConst.body16Bold,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButtonWithIconComponent(
                onTap: () {
                  authenticationController.onTapEmail();
                },
                buttonSize: 50,
                iconData: Icons.mail,
                iconColor: ColorConst.colorsBlack,
                buttonColor: ColorConst.colorsWhite,
              ),
              CircleButtonWithIconComponent(
                onTap: () {
                  authenticationController.onTapGoogle();
                },
                buttonSize: 50,
                iconData: FontAwesomeIcons.google,
                iconColor: ColorConst.colorsBlack,
                buttonColor: ColorConst.colorsWhite,
              ),
              CircleButtonWithIconComponent(
                onTap: () {
                  authenticationController.onTapApple();
                },
                buttonSize: 50,
                iconData: FontAwesomeIcons.apple,
                iconColor: ColorConst.colorsBlack,
                buttonColor: ColorConst.colorsWhite,
              ),
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          if (isShowEmailAuthentication)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: EmailSection(
                emailTextEditingController: emailTextEditingController,
                passwordTextEditingController: passwordTextEditingController,
              ),
            ),
          const SizedBox(
            height: 64,
          ),
        ],
      ),
    );
  }
}
