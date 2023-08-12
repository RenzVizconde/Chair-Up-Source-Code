import 'dart:convert';
import 'package:cheerup/UI/exercises/exercises.dart';
import 'package:cheerup/UI/managing_Stress/guides.dart';
import 'package:cheerup/UI/task_Manager/add_task_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import '../../../controllers/task_controller.dart';
import '../../exerciseTab.dart';
import '../../homepage.dart';
import '../../library.dart';
import '../../notes/edit_note_page.dart';
import '../journals/edit_note_screen.dart';

class meditationShort extends StatefulWidget {
  const meditationShort({super.key});

  @override
  State<meditationShort> createState() => _meditationShortState();
}

class _meditationShortState extends State<meditationShort> {
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
              Image.asset(
                "assets/images/meditation short.png",
                height: 100,
              ),
              Text(
                "3-5 mins",
                style: TextStyle(
                  color: Color(0xFF77381F),
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFBEBC1),
                  borderRadius: BorderRadius.circular(13),
                ),
                constraints: BoxConstraints(minWidth: 100, maxWidth: 250),
                child: Column(
                  children: <Widget>[
                    Text(
                      'BENEFITS:',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' • Discernment \n • Decreased Depression and Increased happiness \n • Core Creativity \n • Self-awareness and better decision-making \n • Reduced Stress \n • Perspective \n • Improvement in your life.',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'STEPS',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1. Find a place to sit or stand where you won't be disturbed. \n\n2. Set your timer for five minutes \n\n3.Allow your eyes to gently close.\n\n4. Feel your breath as your lungs expand and contract. \n\n5. Notice the sensations along the surface of your skin, feeling the air in the room. \n\n6. Bring your awareness to the space above your head, noticing any sounds or movement in the space above you.",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationS6.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "7. Move your awareness to the space below you. Noticing where your body touches the cushion or floor. Notice any, subtle vibrations from the floor.                                                                                                                                                                                                                                                                                                                                 ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationS7.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "8. Keeping your body in a restful stillness, bring your awareness to the space in front of you, as far as your senses can reach.                                                                                                                                                                                                                                                                                                                                  ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationS8.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "9. Next, notice any sounds or movement to your right.                                                                                                                                                                                                                                                                                                                                                                                                                                           ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationS9.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "10. Move your awareness to the space behind you, filling the room, even expanding beyond the room. (Any sounds on the other side of the walls?)                                                                                                                                                                                                                                                                                                                                  ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationS10.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "11. Move your awareness to your left.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationS11.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "12. Envision your awareness as a glow in all directions around you, mentally scanning all directions at once-simply witnessing the moment as it is.                                                                                                                                                                                                                                                                                                                                                                                    ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationS12.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "13. If the mind wanders, bring your awareness back to the breath as it expands and contracts, and expand your awareness in all directions around you from there.                                                                                                                                                                                                                                                                                                                                                                                     ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Author:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
                          style: TextStyle(
                              color: Color(0xFF77381F),
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                        Text(
                          'Benjamin W. Decker                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ',
                          style: TextStyle(
                            color: Color(0xFF77381F),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Citation:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
                          style: TextStyle(
                              color: Color(0xFF77381F),
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        Text(
                          'Decker, B.W.(2018). Practical meditation for beginners: 10 days to a happier, calmer you. Althea Press.                                                                                                                                                                                                                                                                                                                                                                                                                                            ',
                          style: TextStyle(
                            color: Color(0xFF77381F),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
                  ],
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
          )),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Meditation Short',
        style: TextStyle(
          color: Color(0xFF77381F),
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Get.to(() => guides());
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
