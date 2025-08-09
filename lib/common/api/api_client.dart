import 'package:chat_application/data/dtos/chat_dto.dart';
import 'package:dio/dio.dart';

class ApiClient {
  ApiClient({required Dio dio}) : _dio = dio;
  final Dio _dio;

  Future<List<dynamic>> getMessages({required String chatId}) async {
    final response = await _dio.get(
      'http://localhost:3000/api/messages/$chatId',
    );

    final List<Map<String, dynamic>> jsoList = response.data
        .cast<Map<String, dynamic>>();
    final messages = jsoList
        .map((json) => ChatDto.fromJson(json).toDomain())
        .toList();
    return messages;
  }
}
