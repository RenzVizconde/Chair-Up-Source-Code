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

class meditationLong extends StatefulWidget {
  const meditationLong({super.key});

  @override
  State<meditationLong> createState() => _meditationLongState();
}

class _meditationLongState extends State<meditationLong> {
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
                "assets/images/meditation long.png",
                height: 100,
              ),
              Text(
                "10-15 mins",
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
                      ' • Appreciation of the good times.  \n • Stress Management Skills \n • Self-acceptance and acceptance of others. \n • The ability to release mental baggage \n • Improved emotional self-regulation. \n • The ability to identify your needs. \n • Equanimity and emotional balance.',
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
                      "1. Find a place to sit or stand where you won't be disturbed                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationL1.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Set your timer for 10 minutes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationL2.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Allow your eyes to gently close. Or, if you prefer, allow your eyes to rest partially open, maintaining a soft, unfocused downward gaze-don't look at anything specific.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationL3.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Settle in by shifting your attention to your breath for a few inhales and exhales.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationL4.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "5. You could start by noticing how you are feeling about meditating. Are you happy to be sitting? Hopeful? Curious? Bored?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/MeditationL5.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "6.Try not to go too deeply into an analysis of your emotional state, but hold an open awareness of it. \n\n7. Once you have a good sense of your current emotion, notice any thoughts surrounding it. \n\n8. Notice any particular sensations in the body.       \n\n9. Notice any impulses to move or adjust the body and breathe through them. Allow yourself to decompress, letting go of tension so that any physical sensations related to the emotion might become more apparent. \n\n10. When the mind wanders, bring your awareness back to the breath, then to the emotions. \n\n11. Don't worry how frequently your mind wanders; just return your attention to the breath, noticing its rhythm, and then to the emotions, the thoughts surrounding the emotions, and any physical sensations. ",
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
                          'Author:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ',
                          style: TextStyle(
                              color: Color(0xFF77381F),
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                        Text(
                          'Benjamin W. Decker                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
                          style: TextStyle(
                            color: Color(0xFF77381F),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Citation:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ',
                          style: TextStyle(
                              color: Color(0xFF77381F),
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        Text(
                          'Decker, B.W.(2018). Practical meditation for beginners: 10 days to a happier, calmer you. Althea Press.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ',
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
        'Meditation Long',
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
