import 'package:flutter/material.dart';
import 'package:orvm_yes_no_app/config/themes/app_theme.dart';
import 'package:orvm_yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme(),
      home: const ChatScreen()
    );
  }
}