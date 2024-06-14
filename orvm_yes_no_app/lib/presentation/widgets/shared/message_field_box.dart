import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focus = FocusNode();

    final outLineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(20)
    );

    final inputDecoration = InputDecoration(
      hintText: 'Escribe un mensaje, debe terminar en "?"',
      enabledBorder: outLineInputBorder,
      focusedBorder: outLineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final textValue = textController.value.text;
          print('Envio desde el boton $textValue');
          textController.clear();
          focus.requestFocus();
        },
      )
    );

    return TextFormField(
      focusNode: focus,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        final textValue = textController.value.text;
        print('Envio desde el boton submit (keyboard) $textValue');
        textController.clear();
        focus.requestFocus();
      },
      onTapOutside: (event) {
        focus.unfocus();
      },
    );
  }
}