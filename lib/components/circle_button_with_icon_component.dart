import 'package:flutter/material.dart';

class CircleButtonWithIconComponent extends StatelessWidget {
  const CircleButtonWithIconComponent({
    super.key,
    required this.onTap,
    required this.buttonSize,
    required this.iconData,
    required this.iconColor,
    required this.buttonColor,
  });

  final Function()? onTap;
  final double buttonSize;
  final IconData iconData;
  final Color iconColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor,
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: Icon(
          iconData,
          size: buttonSize / 2,
          color: iconColor,
        ),
      ),
    );
  }
}
