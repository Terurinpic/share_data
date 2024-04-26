import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:share_data/const/enum_const.dart';
import 'package:share_data/env/env.dart';
import 'package:share_data/global_states/top_screen_global_state.dart';
import 'package:share_data/screens/authentication/screen.dart';
import 'package:share_data/screens/splash/screen.dart';

final navigatorKeyProvider = Provider((_) => GlobalKey<NavigatorState>());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Supabase
  await Supabase.initialize(
    anonKey: Env.supabaseKey,
    url: Env.supabaseUrl,
  );
  runApp(
    const ProviderScope(
      overrides: [],
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topScreenType = ref.watch(
      topScreenGlobalStateProvider.select((value) => value.topScreenType),
    );

    return MaterialApp(
      title: 'share_data',
      theme: ThemeData.light(),
      home: _getTopScreenType(topScreenType: topScreenType),
      navigatorKey: ref.watch(navigatorKeyProvider),
    );
  }
}

Widget _getTopScreenType({
  required TopScreenType topScreenType,
}) {
  if (topScreenType == TopScreenType.splash) {
    return const SplashScreen();
  } else if (topScreenType == TopScreenType.authentication) {
    return const AuthenticationScreen();
  } else {
    return const SplashScreen();
  }
}
