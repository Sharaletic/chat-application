import 'dart:convert';
import 'package:chat_application/common/api/api_client/api_client.dart';
import 'package:chat_application/common/dependence/setup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MessageBar extends StatefulWidget {
  const MessageBar({
    super.key,
    required this.recipientId,
    required this.recipientName,
  });
  final String recipientId;
  final String recipientName;

  @override
  State<MessageBar> createState() => _MessageBarState();
}

class _MessageBarState extends State<MessageBar> {
  final _messageController = TextEditingController();
  late final ApiClient _apiClient;
  late final WebSocketChannel _channel;

  @override
  void initState() {
    _apiClient = getIt<ApiClient>();
    _channel = _apiClient.channel;
    super.initState();
  }

  void _sendMessage() async {
    final chatId = await getIt<ApiClient>().createChat(
      recipientId: widget.recipientId,
      recipientName: widget.recipientName,
    );

    final user = getIt<FirebaseAuth>().currentUser;

    final message = {
      'type': 'join_chat',
      'payload': {'userName': user!.displayName, 'chatId': chatId},
    };
    _channel.sink.add(jsonEncode(message));

    if (_messageController.text.isNotEmpty) {
      final message = {
        'type': 'send_message',
        'payload': {
          'message': _messageController.text,
          'chatId': chatId,
          'createdTime': DateTime.now().toString(),
        },
      };
      _channel.sink.add(jsonEncode(message));
      _messageController.clear();
    }
  }

  @override
  void dispose() {
    _messageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  maxLines: null,
                  autofocus: true,
                  controller: _messageController,
                  decoration: const InputDecoration(
                    hintText: 'Type a message',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => _sendMessage(),
                child: const Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
