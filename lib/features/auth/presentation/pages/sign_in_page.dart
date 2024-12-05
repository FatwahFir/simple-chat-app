import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:chat_app/core/extensions/context_extension.dart';
import 'package:chat_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:chat_app/features/auth/presentation/pages/sign_up_page.dart';
import 'package:chat_app/features/chat/presentation/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  static const routeName = '/sign-in';

  final TextEditingController _emailC = TextEditingController();
  final TextEditingController _passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message_rounded,
                        size: 60,
                        color: context.primary,
                      ),
                      const SizedBox(height: 60),
                      Text(
                        "Welcome back, you've been missed",
                        style: TextStyle(fontSize: 16, color: context.primary),
                      ),
                      const SizedBox(height: 25),
                      MyTextfield(
                        hintText: 'Email',
                        controller: _emailC,
                      ),
                      const SizedBox(height: 10),
                      MyTextfield(
                        hintText: 'Password',
                        controller: _passwordC,
                        obscure: true,
                      ),
                      const SizedBox(height: 25),
                      MyButton(
                        text: 'Sign In',
                        onTap: () {
                          context
                              .read<AuthCubit>()
                              .signIn(_emailC.text, _passwordC.text);
                        },
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not a member? ',
                            style: TextStyle(color: context.primary),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .pushReplacementNamed(SignUpPage.routeName),
                            child: Text(
                              'Sign Up now',
                              style: TextStyle(
                                  color: context.primary,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            signedIn: () {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context).pushReplacementNamed(ChatPage.routeName);
              });
              return const SizedBox.shrink();
            },
            error: (e) {
              return Center(
                child: Text(
                  'Error: $e',
                  style: const TextStyle(color: Colors.red),
                ),
              );
            },
          );
        },
        listener: (BuildContext context, AuthState state) {
          state.maybeWhen(
            orElse: () {},
            signedIn: () =>
                Navigator.of(context).pushReplacementNamed(ChatPage.routeName),
          );
        },
      ),
    );
  }
}
