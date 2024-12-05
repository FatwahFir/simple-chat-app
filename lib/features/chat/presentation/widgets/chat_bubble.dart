import 'package:chat_app/features/chat/domain/entities/chat_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    bool isCurrentUser =
        message.senderID == FirebaseAuth.instance.currentUser!.uid;
    Alignment alignment =
        isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;
    return Container(
      alignment: alignment,
      child: Container(
        decoration: BoxDecoration(
          color: isCurrentUser
              ? Colors.green
              : const Color.fromARGB(255, 110, 110, 110),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Text(
          message.message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
