import 'package:flutter/material.dart';
import 'package:orvm_yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  ScrollController chatScrollController = new ScrollController();

  final List<Message> _messages = [
    Message(text: "Que onda", fromWho: FromWho.me),
    Message(text: "Que ondaaaaa", fromWho: FromWho.her),
    ];

  Future<void> sendMessage(String value) async {
    if(value.isEmpty) return;
    final newMessage = Message(text: value, fromWho: FromWho.me);

    messages.add(newMessage);

    notifyListeners();  
  }

  List<Message> get messages => _messages;

  void addMessage(Message message) {
    _messages.add(message);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    print("Scroll bottom");
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut);
  }
}