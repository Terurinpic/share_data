import 'package:flutter/material.dart';

import 'package:share_data/const/color_const.dart';

class SeparateDividerComponent extends StatelessWidget {
  const SeparateDividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorConst.colorsBlack,
      height: 1,
      thickness: 1,
    );
  }
}
