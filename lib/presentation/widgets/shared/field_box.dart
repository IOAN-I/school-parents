

import 'package:flutter/material.dart';

class FieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  final String hintText;

  const FieldBox({super.key, required this.onValue, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();


    final inputDecoration = InputDecoration(
      hintText: hintText,
      suffixIcon: IconButton(onPressed: () {
        final textValue = textController.value.text;
        textController.clear();
        onValue(textValue);
      }, icon: const Icon(Icons.remove_red_eye)));

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
      },
      );
  }
}