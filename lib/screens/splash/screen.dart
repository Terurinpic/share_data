import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/screens/splash/controller.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // controller
    final splashController = ref.read(splashControllerProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await Future.delayed(const Duration(seconds: 3));

        splashController.init();
      });

      return null;
    }, []);

    return const Scaffold(
      body: Center(
        child: Icon(Icons.image_outlined),
      ),
    );
  }
}
