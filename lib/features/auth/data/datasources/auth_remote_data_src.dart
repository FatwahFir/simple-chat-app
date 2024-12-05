import 'package:chat_app/core/errors/exceptions.dart';
import 'package:chat_app/features/chat/data/models/local_user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class AuthRemoteDataSrc {
  const AuthRemoteDataSrc();

  Future<void> signIn({
    required String email,
    required String password,
  });

  Future<void> signUp({
    required String email,
    required String name,
    required String password,
  });

  Future<void> signOut();
}

class AuthRemoteDataSrcImpl implements AuthRemoteDataSrc {
  AuthRemoteDataSrcImpl(
      {required FirebaseAuth authClient,
      required FirebaseFirestore cloudStoreClient})
      : _authClient = authClient,
        _cloudStoreClient = cloudStoreClient;
  final FirebaseAuth _authClient;
  final FirebaseFirestore _cloudStoreClient;

  @override
  Future<void> signIn({required String email, required String password}) async {
    try {
      UserCredential creds = await _authClient.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (creds.user == null) {
        throw const ServerException(
          message: "Please try again later",
          statusCode: 'Unknown error',
        );
      }
    } on FirebaseAuthException catch (e) {
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
  Future<void> signOut() async {
    try {
      await _authClient.signOut();
    } on FirebaseAuthException catch (e) {
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
  Future<void> signUp({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      final userCreds = await _authClient.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await userCreds.user?.updateDisplayName(name);
      await _setUser(_authClient.currentUser!, email);
    } on FirebaseAuthException catch (e) {
      throw ServerException(
        message: e.message ?? 'Error occured',
        statusCode: e.code,
      );
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      throw ServerException(message: e.toString(), statusCode: '505');
    }
  }

  Future<void> _setUser(User user, String fallbackEmail) async {
    await _cloudStoreClient.collection('users').doc(user.uid).set(
          LocalUserModel(
            uid: user.uid,
            email: user.email ?? fallbackEmail,
            name: user.displayName ?? '',
          ).toJson(),
        );
  }
}
