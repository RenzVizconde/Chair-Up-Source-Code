import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'db.dart';
import 'note_form.dart';
import 'note_model.dart';

class EditNoteScreen extends StatefulWidget {
  const EditNoteScreen({Key? key, this.note}) : super(key: key);
  final Note? note;

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  final _formKey = GlobalKey<FormState>();
  late String title;
  late String description;
  late IconData generalIcon;
  @override
  void initState() {
    super.initState();
    title = widget.note?.title ?? ''; // by default empty
    description = widget.note?.description ?? ''; // by default empty
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
        ),
        actions: [buildButton()],
      ),
      body: Form(
        key: _formKey,
        child: NoteForm(
          title: title,
          description: description,
          onChangedTitle: (title) => setState(() => this.title = title),
          onChangedDescription: (description) =>
              setState(() => this.description = description),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Color(0xFFFFF9F0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ));

  Widget buildButton() {
    final isFormValid =
        title.isNotEmpty && description.isNotEmpty; // check is form valid

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: isFormValid ? Color(0xFFBA723E) : Color(0xFFBA723E),
        ),
        onPressed: addOrUpdateNote,
        child: const Icon(
          FontAwesomeIcons.check,
        ),
      ),
    );
  }

//addOrUpdateNote
  void addOrUpdateNote() async {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      final isUpdating = widget.note != null;
      if (isUpdating) {
        await updateNote();
      } else {
        await addNote();
      }
      Navigator.of(context).pop();
    }
  }

//updateNote
  Future updateNote() async {
    final note = widget.note!.copy(
      title: title,
      description: description,
      createdTime: DateTime.now(),
    );
    await NotesDatabase.instance.update(note);
  }

//addNote
  Future addNote() async {
    final note = Note(
      title: title,
      description: description,
      createdTime: DateTime.now(),
    );
    await NotesDatabase.instance.create(note);
  }
}
