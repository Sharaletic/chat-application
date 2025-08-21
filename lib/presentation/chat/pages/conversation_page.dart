import 'package:chat_application/common/state_management/chat/chat_bloc.dart';
import 'package:chat_application/presentation/chat/widgets/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({
    super.key,
    required this.recipientId,
    required this.recipientName,
  });
  final String recipientId;
  final String recipientName;

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                switch (state) {
                  case Loading():
                    return CircularProgressIndicator();
                  case Loaded():
                    return ListView.builder(
                      itemCount: state.chatModels.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(state.chatModels[index].message),
                        subtitle: Text(state.chatModels[index].userName),
                      ),
                    );
                  case Failure():
                    return Text(state.message);
                  default:
                    return Text('No data');
                }
              },
            ),
          ),
          MessageBar(
            recipientId: widget.recipientId,
            recipientName: widget.recipientName,
          ),
        ],
      ),
    );
  }
}
