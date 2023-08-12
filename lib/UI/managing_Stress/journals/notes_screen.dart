import 'package:cheerup/UI/managing_Stress/guides.dart';
import 'package:cheerup/UI/managing_Stress/managing_stress_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../controllers/task_controller.dart';
import '../../exerciseTab.dart';
import '../../homepage.dart';
import '../../library.dart';
import '../../notes/edit_note_page.dart';
import '../../task_Manager/add_task_bar.dart';
import 'db.dart';
import 'edit_note_screen.dart';
import 'note_card.dart';
import 'note_model.dart';
import 'notes_detail_screen.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final _taskController = Get.put(TaskController());
  final isDialOpen = ValueNotifier(false);
  TextEditingController controller = TextEditingController();
  List<Note> notes = <Note>[];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    refreshNotes();
  }

  @override
  // close instance
  void dispose() {
    NotesDatabase.instance.close();
    super.dispose();
  }

  // to refresh and read all notes
  Future refreshNotes() async {
    setState(() => _isLoading = true);
    notes = await NotesDatabase.instance.readAllNotes();
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(context),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              width: double.infinity,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: _isLoading
                    ? const CircularProgressIndicator()
                    : notes.isEmpty
                        ? const Text(
                            textAlign: TextAlign.center,
                            "Press '+' and choose \n'Add Journal' to get started!",
                            style: TextStyle(
                              color: Color(0xFF77381F),
                              fontSize: 22,
                            ),
                          )
                        : buildNotes(),
              ),
            ),
          ],
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
                  refreshNotes();
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
      );

  Widget buildNotes() => ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(), // enable for both-ways scrolling
      itemCount: notes.length,
      itemBuilder: ((context, index) {
        final note = notes[index];
        return GestureDetector(
          onTap: () async {
            await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NotesDetailScreen(noteId: note.id!),
            ));
            refreshNotes();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: NoteCard(note: note, index: index),
          ),
        );
      }));

  void searchTitle(String query) {
    var suggestions = notes.where((note) {
      final noteTitle = note.title.toLowerCase();
      final input = query.toLowerCase();
      return noteTitle.contains(input);
    }).toList();
    setState(() => notes = suggestions);
  }

  _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        'My Journal',
        style: TextStyle(
          color: Color(0xFF77381F),
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Get.to(() => LibraryPage());
          ;
        },
        child: Icon(
          Icons.arrow_back,
          color: Color(0xFF77381F),
          size: 25,
        ),
      ),
    );
  }
}
