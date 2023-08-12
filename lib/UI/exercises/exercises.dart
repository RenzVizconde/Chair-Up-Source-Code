import 'dart:convert';
import 'package:cheerup/UI/exerciseTab.dart';
import 'package:cheerup/UI/exercises/exerciseList/sittingLong.dart';
import 'package:cheerup/UI/exercises/exerciseList/sittingShort.dart';
import 'package:cheerup/UI/exercises/exerciseList/standingLong.dart';
import 'package:cheerup/UI/exercises/exerciseList/standingShort.dart';
import 'package:cheerup/UI/managing_Stress/Guides/meditationShort.dart';
import 'package:cheerup/UI/task_Manager/add_task_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import '../../controllers/task_controller.dart';
import '../homepage.dart';
import '../library.dart';
import '../managing_Stress/journals/edit_note_screen.dart';
import '../notes/edit_note_page.dart';

class exercises extends StatefulWidget {
  const exercises({super.key});

  @override
  State<exercises> createState() => _exercisesState();
}

class _exercisesState extends State<exercises> {
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
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Physical Exercises",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF77381F),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/nature.png',
                height: 200,
                width: 350,
                fit: BoxFit.fitWidth,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/guides.png",
                      height: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sitting',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ],
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
                            Get.to(() => sittingShort());
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
                                  "assets/images/sittingShort.png",
                                  height: 50,
                                ),
                                Text(
                                  "3-5 mins",
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
                            Get.to(() => sittingLong());
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
                                  "assets/images/sitting long.png",
                                  height: 50,
                                ),
                                Text(
                                  "10-15 mins",
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
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/guides.png",
                      height: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Standing',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ],
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
                            Get.to(() => standingShort());
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
                                  "assets/images/standing short.png",
                                  height: 50,
                                ),
                                Text(
                                  "3-5 mins",
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
                            Get.to(() => standingLong());
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
                                  "assets/images/standing long.png",
                                  height: 50,
                                ),
                                Text(
                                  "10-15 mins",
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
        ),
      ),
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
          Get.to(() => exerciseTab());
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
