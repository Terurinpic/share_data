import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:share_data/components/circle_button_with_icon_component.dart';
import 'package:share_data/const/color_const.dart';
import 'package:share_data/const/text_style_const.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 256,
          ),
          const Text(
            '以下、いずれかの方法で続けてください',
            style: TextStyleConst.body16Bold,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButtonWithIconComponent(
                onTap: () {},
                buttonSize: 50,
                iconData: Icons.mail,
                iconColor: ColorConst.colorsBlack,
                buttonColor: ColorConst.colorsWhite,
              ),
              CircleButtonWithIconComponent(
                onTap: () {},
                buttonSize: 50,
                iconData: FontAwesomeIcons.google,
                iconColor: ColorConst.colorsBlack,
                buttonColor: ColorConst.colorsWhite,
              ),
              CircleButtonWithIconComponent(
                onTap: () {},
                buttonSize: 50,
                iconData: Icons.mail,
                iconColor: ColorConst.colorsBlack,
                buttonColor: ColorConst.colorsWhite,
              ),
            ],
          )
        ],
      ),
    );
  }
}
