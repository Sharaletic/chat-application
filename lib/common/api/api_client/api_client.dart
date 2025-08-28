import 'dart:convert';
import 'package:chat_application/data/dtos/chat_dto/chat_dto.dart';
import 'package:chat_application/data/dtos/message_dto/message_dto.dart';
import 'package:chat_application/data/dtos/user_dto.dart/member_dto.dart';
import 'package:chat_application/domain/models/chat_model.dart';
import 'package:chat_application/domain/models/message_model.dart';
import 'package:chat_application/domain/models/member_model.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ApiClient {
  ApiClient({required Dio dio, required FirebaseAuth instance})
    : _dio = dio,
      _instance = instance;
  final Dio _dio;
  final FirebaseAuth _instance;

  WebSocketChannel? _channel;

  WebSocketChannel get channel {
    _channel ??= WebSocketChannel.connect(Uri.parse('ws://localhost:3000'));
    return _channel!;
  }

  void closeConnection() {
    _channel!.sink.close();
    _channel = null;
  }

  Future<List<MessageModel>> getMessages({required String chatId}) async {
    final response = await _dio.get(
      'http://localhost:3000/api/messages/$chatId',
    );

    final List<Map<String, dynamic>> jsonList = response.data
        .cast<Map<String, dynamic>>();
    final messages = jsonList
        .map((json) => MessageDto.fromJson(json).toDomain())
        .toList();
    return messages;
  }

  Future<void> createMember({
    required String id,
    required String userName,
    required String emailAddress,
  }) async {
    await _dio.post(
      'http://localhost:3000/api/member',
      data: {'id': id, 'userName': userName, 'emailAddress': emailAddress},
    );
  }

  Future<List<MemberModel>> getMembers() async {
    final currentUserId = _instance.currentUser!.uid;
    final response = await _dio.get(
      'http://localhost:3000/api/members',
      data: {'currentUserId': currentUserId},
    );

    final List<Map<String, dynamic>> jsonList = response.data
        .cast<Map<String, dynamic>>();

    final members = jsonList
        .map((member) => MemberDto.fromJson(member).toDomain())
        .toList();
    return members;
  }

  Future<String> createChat({required String recipientId}) async {
    final String senderId = _instance.currentUser!.uid;
    final String senderName = _instance.currentUser!.displayName!;
    final response = await _dio.post(
      'http://localhost:3000/api/chat',
      data: {
        'sender_id': senderId,
        'recipient_id': recipientId,
        'senderName': senderName,
      },
    );
    final chatId = response.data['chatId'] as String;
    return chatId;
  }

  void joinChat({required String chatId}) {
    final String userName = _instance.currentUser!.displayName!;
    final message = {
      'type': 'join_chat',
      'payload': {'userName': userName, 'chatId': chatId},
    };
    _channel!.sink.add(jsonEncode(message));
  }

  void sendMessage({required String message, required String chatId}) {
    final responce = {
      'type': 'send_message',
      'payload': {
        'message': message,
        'chatId': chatId,
        'createdTime': DateTime.now().toString(),
      },
    };
    _channel!.sink.add(jsonEncode(responce));
  }

  Future<List<ChatModel>> getChats() async {
    final String currentUserId = _instance.currentUser!.uid;
    final json = await _dio.get(
      'http://localhost:3000/api/chats',
      data: {'currentUserId': currentUserId},
    );

    final List<Map<String, dynamic>> jsonList = json.data
        .cast<Map<String, dynamic>>();

    final chats = jsonList.map((e) => ChatDto.fromJson(e).toDomain()).toList();
    return chats;
  }
}
