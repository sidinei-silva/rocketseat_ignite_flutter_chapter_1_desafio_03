import 'package:flutter/material.dart';

class InputNoteWidget extends StatelessWidget {
  final TextEditingController textController;
  final ValueChanged<String> onChanged;

  const InputNoteWidget({
    Key? key,
    required this.textController,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      maxLines: null,
      onChanged: onChanged,
      decoration: InputDecoration(labelText: "Descrição"),
    );
  }
}
