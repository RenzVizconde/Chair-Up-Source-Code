import 'dart:convert';
import 'package:cheerup/UI/exercises/exercises.dart';
import 'package:cheerup/UI/managing_Stress/guides.dart';
import 'package:cheerup/UI/task_Manager/add_task_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controllers/task_controller.dart';
import '../../exerciseTab.dart';
import '../../homepage.dart';
import '../../library.dart';
import '../../notes/edit_note_page.dart';
import '../journals/edit_note_screen.dart';

class relaxationLong extends StatefulWidget {
  const relaxationLong({super.key});

  @override
  State<relaxationLong> createState() => _relaxationLongState();
}

class _relaxationLongState extends State<relaxationLong> {
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
                "assets/images/relaxation long.png",
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
                      ' • Decrease physical and psychological tension and anxiety.  \n • Reduce cortisol levels in patients.   \n • Decrease in somatic and subjective experiences of stress. ',
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
                      "1. Sit or lie down comfortably. Ideally, the space will have minimal distractions.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/RelaxationsS1.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Starting at the feet, curl the toes under and tense the muscles in the foot. Hold for 5 seconds, then slowly release for 10 seconds. During the release, focus attention on the alleviation of tension and the experience of relaxation.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/RelaxationL.png',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Tense the muscles in the lower legs. Hold for 5 seconds, then slowly release for 10 seconds. During the release, focus attention on the alleviation of tension and the experience of relaxation.  \n\n4. Tense the muscles in the hips and buttocks. Hold for 5 seconds, then slowly release for 10 seconds. During the release, focus attention on the alleviation of tension and the experience of relaxation. \n\n5. Tense the muscles in the stomach and chest. Hold for 5 seconds, then slowly release for 10 seconds. During the release, focus attention on the alleviation of tension and the experience of relaxation. \n\n 6. Tense the muscles in the shoulders. Hold for 5 seconds, then slowly release for 10 seconds. During the release, focus attention on the alleviation of tension and the experience of relaxation. \n\n7. Tense the muscles in the face (e.g., squeezing eyes shut). Hold for 5 seconds, then slowly release for 10 seconds. During the release, focus attention on the alleviation of tension and the experience of relaxation. \n\n8. Tense the muscles in the hand, creating a fist. Hold for 5 seconds, then slowly release for 10 seconds. During the release, focus attention on the alleviation of tension and the experience of relaxation. \n\n9. You can repeat if you still feel tense. ",
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
                          'Samantha K. Norelli, Ashley Long, Jeffrey M. Krepps                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ',
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
                        RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                text:
                                    'Norelli SK, Long A, Krepps JM. Relaxation Techniques. [Updated 2022 Aug 29]. In: StatPearls [Internet]. Treasure Island (FL): StatPearls Publishing; 2022 Jan-. Available from: ',
                                style: TextStyle(
                                  color: Color(0xFF77381F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              new TextSpan(
                                text:
                                    'https://www.ncbi.nlm.nih.gov/books/NBK513238/',
                                style: new TextStyle(color: Colors.blue),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        "https://www.ncbi.nlm.nih.gov/books/NBK513238/");
                                  },
                              ),
                            ],
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
        'Relaxation Long',
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
