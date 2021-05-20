import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: isEdit ? Text("Edit Page") : Text("Create Page"),
        centerTitle: true,
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
            TextField(
              controller: textController,
              maxLines: null,
              onChanged: (value) {
                setState(() {
                  description = value;
                });
              },
              decoration: InputDecoration(labelText: "Descrição"),
            ),
            SizedBox(height: 32),
            if (description.isNotEmpty)
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, description);
                      },
                      child: Text("Salvar"),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
