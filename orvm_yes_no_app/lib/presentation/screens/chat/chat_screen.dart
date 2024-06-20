import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:orvm_yes_no_app/domain/entities/message.dart';
import 'package:orvm_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:orvm_yes_no_app/presentation/widgets/chat/her_message.dart';
import 'package:orvm_yes_no_app/presentation/widgets/chat/my_message.dart';
import 'package:orvm_yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://preview.redd.it/0o8hi3301ymb1.jpg?width=640&crop=smart&auto=webp&s=91a2bb7cced28c67d6715580c8b252a5483d4fa3"),
          ),
        ),
        title: const Text('Usuario'),
        centerTitle: false
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    final chatProvider = context.watch<ChatProvider>();
    
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];
                  switch(message.fromWho){
                    case FromWho.me:
                      return MyMessage(message: message,);
                    case FromWho.her:
                      return HerMessage(message: message);
                  }
                },
                dragStartBehavior: DragStartBehavior.down
                )
            ),
            MessageFieldBox(
              onValue: chatProvider.sendMessage
            )
          ],
        ),
      ),
    );
  }
}