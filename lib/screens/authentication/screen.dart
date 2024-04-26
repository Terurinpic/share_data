import 'package:flutter/material.dart';

import 'package:share_data/screens/authentication/body.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailTextEditingController = TextEditingController();
    final passwordTextEditingController = TextEditingController();

    return Scaffold(
      body: AuthenticationBody(
        emailTextEditingController: emailTextEditingController,
        passwordTextEditingController: passwordTextEditingController,
      ),
    );
  }
}
