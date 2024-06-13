import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orvm_yes_no_app/presentation/widgets/chat/my_message.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const MyMessage();
                },
                )
            ),
            Text('Mundo')
          ],
        ),
      ),
    );
  }
}