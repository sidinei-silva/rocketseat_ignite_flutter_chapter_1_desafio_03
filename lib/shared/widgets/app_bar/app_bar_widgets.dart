import 'package:flutter/material.dart';

class AppBarWidget extends AppBar with PreferredSizeWidget {
  AppBarWidget({
    Key? key,
    required String title,
    List<Widget>? actions,
  }) : super(
          key: key,
          title: Text(title),
          centerTitle: true,
          actions: actions,
        );
}
