import 'package:chat_app/core/errors/exceptions.dart';
import 'package:chat_app/features/chat/data/models/chat_message_model.dart';
import 'package:chat_app/features/chat/data/models/local_user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

abstract class ChatDatasource {
  Stream<List<LocalUserModel>> getUserStream();
  Future<void> sendMessage(
      {required String receiverID, required String message});
  Stream<List<ChatMessageModel>> getMessages({
    required String senderID,
    required String receiverID,
  });
}

class ChatDatasourceImpl implements ChatDatasource {
  ChatDatasourceImpl(
      {required FirebaseFirestore storeClient,
      required FirebaseAuth authClient})
      : _storeClient = storeClient,
        _authClient = authClient;
  final FirebaseFirestore _storeClient;
  final FirebaseAuth _authClient;

  @override
  Stream<List<LocalUserModel>> getUserStream() {
    return _storeClient.collection('users').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final user = LocalUserModel.fromJson(doc.data());
        return user;
      }).toList();
    });
  }

  @override
  Future<void> sendMessage({
    required String receiverID,
    required String message,
  }) async {
    try {
      final senderID = _authClient.currentUser!.uid;
      final senderEmail = _authClient.currentUser!.email!;
      final time = Timestamp.now();

      final newMessage = ChatMessageModel(
        senderID: senderID,
        senderEmail: senderEmail,
        receiverID: receiverID,
        message: message,
        timestamp: time,
      );

      List<String> ids = [senderID, receiverID];

      ids.sort();

      String chatRoomId = ids.join('_');

      _storeClient
          .collection('chat_rooms')
          .doc(chatRoomId)
          .collection('messages')
          .add(
            newMessage.toJson(),
          );
    } on FirebaseAuthException catch (e) {
      throw ServerException(
        message: e.message ?? 'Error occured',
        statusCode: e.code,
      );
    } on FirebaseException catch (e) {
      throw ServerException(
        message: e.message ?? 'Error occured',
        statusCode: e.code,
      );
    } on ServerException {
      rethrow;
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      throw ServerException(message: e.toString(), statusCode: '505');
    }
  }

  @override
  Stream<List<ChatMessageModel>> getMessages(
      {required String senderID, required String receiverID}) {
    List<String> ids = [senderID, receiverID];
    ids.sort();
    String chatRoomID = ids.join('_');

    return _storeClient
        .collection('chat_rooms')
        .doc(chatRoomID)
        .collection('messages')
        .orderBy('timestamp', descending: false)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        final chat = ChatMessageModel.fromJson(doc.data());
        return chat;
      }).toList();
    });
  }
}
