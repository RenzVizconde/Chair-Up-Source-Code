import 'dart:convert';
import 'package:cheerup/UI/exerciseTab.dart';
import 'package:cheerup/UI/exercises/exercises.dart';
import 'package:cheerup/UI/managing_Stress/managing_stress_home.dart';
import 'package:cheerup/UI/managing_Stress/playlist_select.dart';
import 'package:cheerup/UI/notes/notes_page.dart';
import 'package:cheerup/UI/task_Manager/add_task_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import '../controllers/task_controller.dart';
import 'homepage.dart';
import 'managing_Stress/journals/edit_note_screen.dart';
import 'managing_Stress/journals/notes_screen.dart';
import 'notes/edit_note_page.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryTaskPageState();
}

class _LibraryTaskPageState extends State<LibraryPage> {
  _initData() {}

  @override
  void initState() {
    super.initState();
    _initData();
  }

  final _taskController = Get.put(TaskController());
  final isDialOpen = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Chair Up!",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF77381F),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/libraryMain.png',
              height: 300,
              width: 350,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => NotesPage());
                          ;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFFFBEBC1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/notesLibrary.png",
                                height: 100,
                              ),
                              Text(
                                "Notes",
                                style: TextStyle(
                                  color: Color(0xFF77381F),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => HomePage());
                          ;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(color: Color(0xFFFBEBC1)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/taskLibrary.png",
                                height: 100,
                              ),
                              Text(
                                "Tasks",
                                style: TextStyle(
                                  color: Color(0xFF77381F),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => NotesScreen());
                          ;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFFFBEBC1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/journalsH.png",
                                height: 100,
                              ),
                              Text(
                                "Journals",
                                style: TextStyle(
                                  color: Color(0xFF77381F),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => playlist_select());
                          ;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(color: Color(0xFFFBEBC1)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/playlistH.png",
                                height: 100,
                              ),
                              Text(
                                "Music",
                                style: TextStyle(
                                  color: Color(0xFF77381F),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
  }
}
