import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:chat_application/common/dependence/setup.dart';
import 'package:chat_application/common/state_management/chat/bloc/chat_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  late final WebSocketChannel _channel = getIt<WebSocketChannel>();
  List<Map<String, dynamic>> messageMap = [];

  @override
  void initState() {
    super.initState();
  }

  void _sendMessage() {
    final user = getIt<FirebaseAuth>().currentUser;
    if (_controller.text.isNotEmpty) {
      final message = {'data': _controller.text, 'user_name': user!.email};
      _channel.sink.add(jsonEncode(message));
      _controller.clear();
    }
  }

  @override
  void dispose() {
    _channel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Введите сообщение'),
            ),
            ElevatedButton(
              onPressed: _sendMessage,
              child: const Text('Отправить'),
            ),
            const SizedBox(height: 20),
            BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                switch (state) {
                  case Loading():
                    return CircularProgressIndicator();
                  case Loaded():
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.chatModels.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text('state.chatModels[index].data'),
                          subtitle: Text('state.chatModels[index].userName'),
                        ),
                      ),
                    );
                  case Failure():
                    return Text(state.message);
                  default:
                    return Text('No data');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
