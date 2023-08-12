import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/task_controller.dart';
import '../../database/notes_database.dart';
import '../../models/note.dart';
import '../exerciseTab.dart';
import '../homepage.dart';
import '../library.dart';
import '../managing_Stress/journals/edit_note_screen.dart';
import '../task_Manager/add_task_bar.dart';
import '../widgets/widget_Notes/note_card_widget.dart';
import 'edit_note_page.dart';
import 'note_detail_page.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late List<Note> notes;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllNotes();

    setState(() => isLoading = false);
  }

  final _taskController = Get.put(TaskController());
  final isDialOpen = ValueNotifier(false);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          foregroundColor: Color(0xFF77381F),
          title: Text(
            'Notes',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF77381F),
            ),
          ),
        ),
        body: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : notes.isEmpty
                  ? Text(
                      textAlign: TextAlign.center,
                      "Press '+' and choose \n'Add Note' to get started!",
                      style: TextStyle(color: Color(0xFF77381F), fontSize: 24),
                    )
                  : buildNotes(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: SpeedDial(
          backgroundColor: Color(0xFFBA723E),
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          spacing: 5,
          spaceBetweenChildren: 10,
          openCloseDial: isDialOpen,
          animatedIcon: AnimatedIcons.add_event,
          buttonSize: 65,
          childrenButtonSize: 70,
          curve: Curves.bounceIn,
          children: [
            SpeedDialChild(
                child: Icon(
                  Icons.task_rounded,
                  size: 30.0,
                ),
                backgroundColor: Color(0xFFBA723E),
                onTap: () async {
                  await Get.to(() => AddTaskPage());
                  _taskController.getTasks();
                },
                foregroundColor: Colors.white,
                label: 'Add Task',
                labelBackgroundColor: Color(0xFFBA723E),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            SpeedDialChild(
                child: Icon(
                  Icons.notes,
                  size: 30.0,
                ),
                backgroundColor: Color(0xFFBA723E),
                onTap: () async {
                  await Get.to(() => AddEditNotePage());
                  refreshNotes();
                },
                foregroundColor: Colors.white,
                label: 'Add Note',
                labelBackgroundColor: Color(0xFFBA723E),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            SpeedDialChild(
                child: Icon(
                  Icons.sticky_note_2,
                  size: 30.0,
                ),
                backgroundColor: Color(0xFFBA723E),
                onTap: () async {
                  await Get.to(() => EditNoteScreen());
                },
                foregroundColor: Colors.white,
                label: 'Add Journal',
                labelBackgroundColor: Color(0xFFBA723E),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            color: Color(0xFFD9D0C3),
            shape: CircularNotchedRectangle(),
            notchMargin: 5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.now_widgets,
                    color: Color(0xFFBA723E),
                    size: 33,
                  ),
                  onPressed: () async {
                    await Get.to(() => LibraryPage());
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.health_and_safety,
                    color: Color(0xFF72605A),
                    size: 33,
                  ),
                  onPressed: () async {
                    await Get.to(() => exerciseTab());
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 18),
                )
              ],
            )),
        /*floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddEditNotePage()),
            );

            refreshNotes();
          },
        ),*/
      );

  Widget buildNotes() => StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(8),
        itemCount: notes.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final note = notes[index];

          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NoteDetailPage(noteId: note.id!),
              ));

              refreshNotes();
            },
            child: NoteCardWidget(note: note, index: index),
          );
        },
      );
}
