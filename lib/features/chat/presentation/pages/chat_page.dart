import 'package:chat_app/components/my_drawer.dart';
import 'package:chat_app/core/extensions/context_extension.dart';
import 'package:chat_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:chat_app/features/auth/presentation/pages/sign_in_page.dart';
import 'package:chat_app/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:chat_app/features/chat/presentation/pages/chat_room_page.dart';
import 'package:chat_app/features/chat/presentation/widgets/user_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static const routeName = '/chats';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    super.initState();
    context.read<ChatCubit>().startStreamUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('C H A T S'),
      ),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            signedOut: () => Navigator.of(context)
                .pushReplacementNamed(SignInPage.routeName),
          );
        },
        child: BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                  child: Text('empty'),
                );
              },
              userLoaded: (users) {
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    if (users[index].email !=
                        FirebaseAuth.instance.currentUser!.email) {
                      return UserTile(
                        text: users[index].name,
                        onTap: () => Navigator.of(context).pushNamed(
                          ChatRoomPage.routeName,
                          arguments: {
                            'user': users[index],
                          },
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                );
              },
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
