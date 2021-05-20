import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/pages/create_note/widgets/button_save/button_save_widget.dart';
import 'package:notes/pages/create_note/widgets/input_note/input_note_widget.dart';
import 'package:notes/shared/widgets/app_bar/app_bar_widgets.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var description = "Alo";
  var textController = TextEditingController();
  var isEdit = false;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        description = ModalRoute.of(context)!.settings.arguments as String;
        textController.text = description;
        setState(() {
          isEdit = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: isEdit ? "Edit Page" : "Create Page",
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              Navigator.pop(context, "");
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputNoteWidget(
              textController: textController,
              onChanged: (value) {
                setState(
                  () {
                    description = value;
                  },
                );
              },
            ),
            SizedBox(height: 32),
            if (description.isNotEmpty)
              ButtonSaveWidget(
                onPressed: () {
                  Navigator.pop(context, description);
                },
              )
          ],
        ),
      ),
    );
  }
}
