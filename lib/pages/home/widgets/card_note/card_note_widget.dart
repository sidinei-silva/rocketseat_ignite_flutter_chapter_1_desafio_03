import 'package:flutter/material.dart';

class CardNoteWidget extends StatelessWidget {
  final String description;
  final VoidCallback onTap;

  const CardNoteWidget({
    Key? key,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(description),
        onTap: onTap,
      ),
    );
  }
}
