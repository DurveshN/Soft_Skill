import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soft_skill_app/blocks/authentication_bloc/authentication_bloc.dart';
import 'package:soft_skill_app/blocks/sign_in_bloc/sign_in_bloc.dart';
import 'package:soft_skill_app/screens/auth/welcome_screen.dart';
import 'package:soft_skill_app/screens/home/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            surface: Colors.white,
            onSurface: Colors.black,
            primary: Color.fromARGB(255, 12, 179, 235),
            onPrimary: Colors.black,
            secondary: Color.fromARGB(255, 58, 241, 251),
            onSecondary: Colors.white,
            tertiary: Color.fromARGB(255, 58, 241, 251),
            error: Colors.red,
            outline: Color(0xFF424242)),
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
        if (state.status == AuthenticationStatus.authenticated) {
          return BlocProvider(
            create: (context) => SignInBloc(
              userRepository: context.read<AuthenticationBloc>().userRepository
            ),
            child: const HomeScreen(),
          );
        } else {
          return const WelcomeScreen();
        }
      }),
    );
  }
}
