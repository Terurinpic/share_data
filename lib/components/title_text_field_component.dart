import 'package:flutter/material.dart';

import 'package:share_data/const/color_const.dart';
import 'package:share_data/const/text_style_const.dart';

class TitleTextFieldComponent extends StatelessWidget {
  const TitleTextFieldComponent({
    super.key,
    required this.title,
    required this.textEditingController,
    required this.onChanged,
  });

  final String title;
  final TextEditingController textEditingController;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleConst.body14Bold,
        ),
        const SizedBox(
          height: 4,
        ),
        TextField(
          controller: textEditingController,
          onChanged: onChanged,
          cursorColor: ColorConst.colorsGrey,
          maxLines: 1,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: ColorConst.colorsWhite,
            filled: true,
          ),
          style: TextStyleConst.body16Regular,
        ),
      ],
    );
  }
}
