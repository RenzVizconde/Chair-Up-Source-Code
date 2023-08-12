import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'db.dart';
import 'edit_note_screen.dart';
import 'note_model.dart';

class NotesDetailScreen extends StatefulWidget {
  const NotesDetailScreen({super.key, required this.noteId});
  final int noteId;
  @override
  State<NotesDetailScreen> createState() => _NotesDetailScreenState();
}

class _NotesDetailScreenState extends State<NotesDetailScreen> {
  late Note note;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    refreshNote();
  }

  Future refreshNote() async {
    setState(() => _isLoading = true);
    note = await NotesDatabase.instance.readNote(widget.noteId);
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFFFFF9F0),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFF77381F),
                size: 35,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(12),
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  children: [
                    Text(
                      note.title,
                      style: const TextStyle(
                        color: Color(0xFF77381F),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          DateFormat.yMMMd().format(note.createdTime),
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          DateFormat.Hms().format(note.createdTime),
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      note.description,
                      style: const TextStyle(
                          color: Color(0xFF77381F), fontSize: 18),
                    )
                  ],
                ),
              ),
        bottomNavigationBar: BottomAppBar(
            color: Color(0xFFD9D0C3),
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    tooltip: "edit",
                    icon: const Icon(
                      FontAwesomeIcons.pencil,
                      color: Color(0xFFBA723E),
                    ),
                    onPressed: () async {
                      if (_isLoading) return;
                      await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EditNoteScreen(note: note),
                      ));

                      refreshNote();
                    }),
                const SizedBox(
                  width: 40,
                ),
                IconButton(
                  tooltip: "delete",
                  icon: const Icon(
                    FontAwesomeIcons.xmark,
                    color: Colors.red,
                  ),
                  onPressed: () async {
                    await NotesDatabase.instance.delete(widget.noteId);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )),
      );

  Widget editButton() => IconButton(
      icon: const Icon(Icons.edit_outlined),
      onPressed: () async {
        if (_isLoading) return;
        await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EditNoteScreen(note: note),
        ));

        refreshNote();
      });

  Widget deleteButton() => IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () async {
          await NotesDatabase.instance.delete(widget.noteId);

          Navigator.of(context).pop();
        },
      );
}
