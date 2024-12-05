import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:chat_app/core/extensions/context_extension.dart';
import 'package:chat_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:chat_app/features/auth/presentation/pages/sign_in_page.dart';
import 'package:chat_app/features/chat/presentation/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  static const routeName = '/sign-up';

  final TextEditingController _emailC = TextEditingController();
  final TextEditingController _nameC = TextEditingController();

  final TextEditingController _passwordC = TextEditingController();

  final TextEditingController _confirmPasswordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            signedUp: () {
              Navigator.of(context).pushReplacementNamed(ChatPage.routeName);
            },
          );
        },
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
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Let's create an account for you",
                        style: TextStyle(fontSize: 16, color: context.primary),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      MyTextfield(
                        hintText: 'Email',
                        controller: _emailC,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextfield(
                        hintText: 'Name',
                        controller: _nameC,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextfield(
                        hintText: 'Password',
                        controller: _passwordC,
                        obscure: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextfield(
                        hintText: 'Confirm password',
                        controller: _confirmPasswordC,
                        obscure: true,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      MyButton(
                        text: 'Sign Up',
                        onTap: () {
                          context.read<AuthCubit>().signUp(
                                _emailC.text,
                                _nameC.text,
                                _passwordC.text,
                              );
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: TextStyle(color: context.primary),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .pushReplacementNamed(SignInPage.routeName),
                            child: Text(
                              'Sign In now',
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
            signedUp: () {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context).pushReplacementNamed(ChatPage.routeName);
              });
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
