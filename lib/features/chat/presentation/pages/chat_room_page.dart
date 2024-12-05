import 'package:chat_app/components/my_textfield.dart';
import 'package:chat_app/core/extensions/context_extension.dart';
import 'package:chat_app/core/utils/typedef.dart';
import 'package:chat_app/features/chat/data/models/local_user_model.dart';
import 'package:chat_app/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:chat_app/features/chat/presentation/widgets/chat_bubble.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({super.key});
  static const routeName = '/chat-room';

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  late final LocalUserModel user;
  final _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(
      () {
        if (_focusNode.hasFocus) {
          Future.delayed(const Duration(milliseconds: 500), () => scrollDown());
        }
      },
    );
    Future.delayed(const Duration(milliseconds: 500), () => scrollDown());
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
    _scrollController.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (ModalRoute.of(context)?.settings.arguments != null) {
      final arguments = ModalRoute.of(context)?.settings.arguments as DataMap;
      user = arguments['user'];
      context.read<ChatCubit>().startStreamMessages(
            senderID: FirebaseAuth.instance.currentUser!.uid,
            receiverID: user.uid,
          );
    }
  }

  void scrollDown() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void sendMessage() {
    context.read<ChatCubit>().sendMessage(
          receiverID: user.uid,
          message: _textController.text,
        );
    _textController.clear();
    scrollDown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        title: Text(user.name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                  messageLoaded: (messages) {
                    return ListView.builder(
                      controller: _scrollController,
                      itemCount: messages.length,
                      itemBuilder: (context, index) => ChatBubble(
                        message: messages[index],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 25),
            child: Row(
              children: [
                Expanded(
                  child: MyTextfield(
                    focusNode: _focusNode,
                    hintText: 'Type something...',
                    controller: _textController,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      onPressed: () => sendMessage(),
                      icon: const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
