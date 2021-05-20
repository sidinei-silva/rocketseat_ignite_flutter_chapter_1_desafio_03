import 'package:flutter/material.dart';

class ButtonSaveWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonSaveWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text("Salvar"),
          ),
        ),
      ],
    );
  }
}
