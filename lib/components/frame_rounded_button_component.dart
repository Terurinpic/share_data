import 'package:flutter/material.dart';

import 'package:share_data/const/color_const.dart';
import 'package:share_data/const/text_style_const.dart';

class FrameRoundedButtonComponent extends StatelessWidget {
  const FrameRoundedButtonComponent({
    super.key,
    this.width = double.infinity,
    required this.height,
    this.roundNumber = 10.0,
    required this.title,
    this.onPressed,
    this.textColor = ColorConst.colorsBlack,
    this.buttonColor = ColorConst.colorsWhite,
    this.sideColor = ColorConst.transparentColor0,
    this.style = TextStyleConst.body14Bold,
  });

  final double width;
  final double height;
  final double roundNumber;
  final String title;
  final Function()? onPressed;
  final Color textColor;
  final Color buttonColor;
  final Color sideColor;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(roundNumber),
            ),
          ),
          shadowColor: ColorConst.transparentColor0,
          side: BorderSide(
            color: sideColor,
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
