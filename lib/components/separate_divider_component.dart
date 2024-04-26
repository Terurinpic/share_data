import 'package:flutter/material.dart';

class SeparateDividerComponent extends StatelessWidget {
  const SeparateDividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).colorScheme.onPrimary,
      height: 1,
      thickness: 1,
    );
  }
}
