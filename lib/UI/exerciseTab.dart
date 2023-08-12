import 'dart:convert';
import 'package:cheerup/UI/exercises/exercises.dart';
import 'package:cheerup/UI/managing_Stress/journals/notes_screen.dart';
import 'package:cheerup/UI/managing_Stress/managing_stress_home.dart';
import 'package:cheerup/UI/managing_Stress/playlist_select.dart';
import 'package:cheerup/UI/task_Manager/add_task_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import '../../controllers/task_controller.dart';
import 'homepage.dart';
import 'library.dart';
import 'managing_Stress/guides.dart';
import 'managing_Stress/journals/edit_note_screen.dart';
import 'notes/edit_note_page.dart';

class exerciseTab extends StatefulWidget {
  const exerciseTab({super.key});

  @override
  State<exerciseTab> createState() => _exerciseTabState();
}

class _exerciseTabState extends State<exerciseTab> {
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
      appBar: _appBar(context),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Exercises                                                                       ',
                style: TextStyle(
                  color: Color(0xFF77381F),
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
              Image.asset(
                "assets/images/welcome.png",
                height: 200,
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => exercises());
                  ;
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFBEBC1),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/physicalLibrary.png",
                        height: 60,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Physical Exercises',
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
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => guides());
                  ;
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFBEBC1),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/mentalLibrary.png",
                        height: 52,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Mental Exercises',
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
              SizedBox(
                height: 25,
              ),
            ],
          ),
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
                  color: Color(0xFF72605A),
                  size: 33,
                ),
                onPressed: () async {
                  await Get.to(() => LibraryPage());
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.health_and_safety,
                  color: Color(0xFFBA723E),
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

  _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        '',
        style: TextStyle(
          color: Color(0xFF77381F),
          fontWeight: FontWeight.w700,
          fontSize: 18,
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
