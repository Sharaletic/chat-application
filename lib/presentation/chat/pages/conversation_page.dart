import 'package:chat_application/common/state_management/chat/chat_bloc.dart';
import 'package:chat_application/common/state_management/message_bloc/message_bloc.dart';
import 'package:chat_application/presentation/chat/widgets/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({super.key, this.chatId, required this.recipientId});
  final String? chatId;
  final String recipientId;

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  String? _createdChatId;

  @override
  void initState() {
    if (widget.chatId == null) {
      context.read<ChatBloc>().add(
        ChatEvent.createChat(recipientId: widget.recipientId),
      );
      _createdChatId = context.watch<ChatBloc>().state.currentChat;
    } else {
      context.read<ChatBloc>().add(ChatEvent.joinChat(chatId: widget.chatId!));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Title'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<MessageBloc, MessageState>(
              builder: (context, state) {
                switch (state) {
                  case LoadingMessageState():
                    return CircularProgressIndicator();
                  case LoadedMessageState():
                    return ListView.builder(
                      itemCount: state.messages.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(state.messages[index].message),
                        subtitle: Text(state.messages[index].userName),
                      ),
                    );
                  case ErrorMessageState():
                    return Text(state.message);
                  default:
                    return const Text('No data');
                }
              },
            ),
          ),
          MessageBar(chatId: widget.chatId ?? _createdChatId),
        ],
      ),
    );
  }
}
