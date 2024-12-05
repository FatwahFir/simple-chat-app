import 'package:chat_app/features/chat/domain/entities/chat_message.dart';

class ChatMessageModel extends ChatMessage {
  const ChatMessageModel({
    required super.senderID,
    required super.senderEmail,
    required super.receiverID,
    required super.message,
    required super.timestamp,
  });

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) {
    return ChatMessageModel(
      senderID: json['senderID'] as String,
      senderEmail: json['senderEmail'] as String,
      receiverID: json['receiverID'] as String,
      message: json['message'] as String,
      timestamp: json['timestamp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'senderID': senderID,
      'senderEmail': senderEmail,
      'receiverID': receiverID,
      'message': message,
      'timestamp': timestamp,
    };
  }
}
