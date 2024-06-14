import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final outLineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(20)
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outLineInputBorder,
      focusedBorder: outLineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {},
      )
    );

    return TextFormField(
      decoration: inputDecoration
    );
  }
}