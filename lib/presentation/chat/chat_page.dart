import 'package:auto_route/auto_route.dart';
import 'package:chat_application/common/state_management/members/members_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    BlocProvider.of<MembersBloc>(context).add(MembersEvent.load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 20),
        child: BlocBuilder<MembersBloc, MembersState>(
          builder: (context, state) {
            switch (state) {
              case Loading():
                return CircularProgressIndicator();
              case Loaded():
                final members = state.members;
                return ListView.builder(
                  itemCount: members.length,
                  itemBuilder: (context, index) =>
                      Text(members[index].userName),
                );
              case Failure():
                return Text(state.message);
            }
          },
        ),
      ),
    );
  }
}
