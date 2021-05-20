import 'package:flutter/material.dart';

class ButtonAddWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const ButtonAddWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 48,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text("Adicionar"),
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
        ),
      ),
    );
  }
}
