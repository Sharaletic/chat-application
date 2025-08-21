import 'package:chat_application/data/dtos/message_dto/message_dto.dart';
import 'package:chat_application/data/dtos/user_dto.dart/user_dto.dart';
import 'package:chat_application/domain/models/message_model.dart';
import 'package:chat_application/domain/models/user_model.dart';
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

  Future<List<UserModel>> getMembers() async {
    final id = _instance.currentUser!.uid;
    final response = await _dio.get(
      'http://localhost:3000/api/members',
      data: {'currentUserId': id},
    );

    final List<Map<String, dynamic>> jsonList = response.data
        .cast<Map<String, dynamic>>();

    final members = jsonList
        .map((member) => UserDto.fromJson(member).toDomain())
        .toList();
    return members;
  }

  Future<String> createChat({
    required String recipientId,
    required String recipientName,
  }) async {
    final String senderId = _instance.currentUser!.uid;
    final String senderName = _instance.currentUser!.displayName!;
    final response = await _dio.post(
      'http://localhost:3000/api/chat',
      data: {
        'sender_id': senderId,
        'recipient_id': recipientId,
        'senderName': senderName,
        'recipientName': recipientName,
      },
    );
    final chatId = response.data['chatId'] as String;
    return chatId;
  }
}
