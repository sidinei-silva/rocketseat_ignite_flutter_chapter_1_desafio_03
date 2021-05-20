import 'package:flutter/material.dart';
import 'package:notes/pages/create_note/create_note_page.dart';
import 'package:notes/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      initialRoute: "/home",
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: {
        "/home": (context) => HomePage(),
        "/create-note": (context) => CreateNotePage()
      },
    );
  }
}
