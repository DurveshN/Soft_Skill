import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soft_skill_app/blocks/authentication_bloc/authentication_bloc.dart';
import 'package:soft_skill_app/login_page.dart';
import 'package:user_repository/user_repository.dart';

class LoginPages extends StatelessWidget {
  final UserRepo userRepo;
  const LoginPages(this.userRepo, {super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthenticationBloc>(
      create: (context) => AuthenticationBloc(
        userRepository: userRepo
      ),
      child: const LoginPage(),
    );
  }
}
