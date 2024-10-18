import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_class/features/authentification/logic/bloc/sign_in_bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext context;
  SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBloc>().state;
        String emailAdress = state.email;
        String password = state.password;

        if (emailAdress.isEmpty) {}
        if (password.isEmpty) {}
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAdress, password: password);
          if (credential.user == null) {}
          if (!credential.user!.emailVerified) {}
          var user = credential.user;

          if (user != null) {
            // user verified
          } else {}
        } catch (e) {}
      }
    } catch (e) {}
  }
}
