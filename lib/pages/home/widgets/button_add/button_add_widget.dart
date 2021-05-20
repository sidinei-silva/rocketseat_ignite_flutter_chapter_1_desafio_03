import 'package:flutter/material.dart';

class ButtonAddWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const ButtonAddWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: onPressed,
    );
  }
}
