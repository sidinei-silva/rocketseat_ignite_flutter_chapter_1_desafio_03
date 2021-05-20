import 'package:flutter/material.dart';
import 'package:notes/pages/home/widgets/button_add/button_add_widget.dart';
import 'package:notes/pages/home/widgets/card_note/card_note_widget.dart';
import 'package:notes/shared/widgets/app_bar/app_bar_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "NOTES",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < notes.length; i++)
              CardNoteWidget(
                description: notes[i],
                onTap: () async {
                  var response = await Navigator.pushNamed(
                    context,
                    "/create-note",
                    arguments: notes[i],
                  );

                  if (response != null) {
                    var description = response as String;
                    if (description.isEmpty) {
                      notes.removeAt(i);
                    } else {
                      notes[i] = description;
                    }
                    setState(() {});
                  }
                },
              )
          ],
        ),
      ),
      bottomNavigationBar: ButtonAddWidget(
        onPressed: () async {
          var description = await Navigator.pushNamed(context, "/create-note");

          if (description != null) {
            setState(() {
              notes.add(description as String);
            });
          }
        },
      ),
    );
  }
}
